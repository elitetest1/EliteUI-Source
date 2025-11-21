.class public final Landroid/util/proto/ProtoInputStream;
.super Landroid/util/proto/ProtoStream;
.source "ProtoInputStream.java"


# static fields
.field private static final blacklist DEFAULT_BUFFER_SIZE:I = 0x2000

.field public static final blacklist NO_MORE_FIELDS:I = -0x1

.field private static final blacklist STATE_FIELD_MISS:B = 0x4t

.field private static final blacklist STATE_READING_PACKED:B = 0x2t

.field private static final blacklist STATE_STARTED_FIELD_READ:B = 0x1t


# instance fields
.field private blacklist mBuffer:[B

.field private final blacklist mBufferSize:I

.field private blacklist mDepth:I

.field private blacklist mDiscardedBytes:I

.field private blacklist mEnd:I

.field private blacklist mExpectedObjectTokenStack:Landroid/util/LongArray;

.field private blacklist mFieldNumber:I

.field private blacklist mOffset:I

.field private blacklist mPackedEnd:I

.field private blacklist mState:B

.field private blacklist mStream:Ljava/io/InputStream;

.field private blacklist mWireType:I


# direct methods
.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .locals 1

    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;I)V
    .locals 2

    invoke-direct {p0}, Landroid/util/proto/ProtoStream;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    const/4 v1, -0x1

    iput v1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mPackedEnd:I

    iput-object p1, p0, Landroid/util/proto/ProtoInputStream;->mStream:Ljava/io/InputStream;

    if-lez p2, :cond_0

    iput p2, p0, Landroid/util/proto/ProtoInputStream;->mBufferSize:I

    goto :goto_0

    :cond_0
    const/16 p1, 0x2000

    iput p1, p0, Landroid/util/proto/ProtoInputStream;->mBufferSize:I

    :goto_0
    iget p1, p0, Landroid/util/proto/ProtoInputStream;->mBufferSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .locals 3

    invoke-direct {p0}, Landroid/util/proto/ProtoStream;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    const/4 v2, -0x1

    iput v2, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mPackedEnd:I

    array-length v0, p1

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mBufferSize:I

    array-length v0, p1

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    iput-object p1, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iput-object v1, p0, Landroid/util/proto/ProtoInputStream;->mStream:Ljava/io/InputStream;

    return-void
.end method

.method private blacklist assertFieldNumber(J)V
    .locals 3

    long-to-int v0, p1

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested field id ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") does not match current field number (0x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") at offset 0x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist assertFreshData()V
    .locals 3

    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/proto/ProtoParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to read already read field at offset 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist assertWireType(I)V
    .locals 3

    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/proto/WireTypeMismatchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current wire type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    invoke-static {v2}, Landroid/util/proto/ProtoInputStream;->getWireTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not match expected wire type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/proto/ProtoInputStream;->getWireTypeString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at offset 0x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/proto/WireTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkPacked(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Landroid/util/proto/ProtoInputStream;->mPackedEnd:I

    iget-byte v2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    const-wide v1, 0xff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    const-string v2, ") packed length "

    const-string v3, "Requested field id ("

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is not a packable field"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/4 p1, 0x0

    iput p1, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    return-void

    :pswitch_2
    rem-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_0

    const/4 p1, 0x5

    iput p1, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not aligned for fixed32"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_3
    rem-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_1

    const/4 p1, 0x1

    iput p1, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not aligned for fixed64"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist fillBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    if-lt v0, v1, :cond_1

    iget-object v2, p0, Landroid/util/proto/ProtoInputStream;->mStream:Ljava/io/InputStream;

    if-eqz v2, :cond_1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    iget v3, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mBufferSize:I

    if-lt v0, v1, :cond_0

    div-int/2addr v0, v1

    mul-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    :cond_0
    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mStream:Ljava/io/InputStream;

    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    :cond_1
    return-void
.end method

.method private blacklist incOffset(I)V
    .locals 3

    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    iget p1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result p1

    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    invoke-virtual {v0, v1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/util/proto/ProtoInputStream;->getOffsetFromToken(J)I

    move-result v0

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/util/proto/ProtoParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpectedly reached end of embedded object.  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    invoke-virtual {v1, v2}, Landroid/util/LongArray;->get(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/util/proto/ProtoInputStream;->token2String(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist readFixed32()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    const/4 v1, 0x4

    add-int/2addr v0, v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    if-gt v0, v2, :cond_0

    invoke-direct {p0, v1}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget p0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/lit8 v1, p0, -0x4

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p0, -0x3

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p0, -0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 p0, p0, -0x1

    aget-byte p0, v0, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v1

    return p0

    :cond_0
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :cond_1
    if-lez v2, :cond_4

    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->fillBuffer()V

    iget v3, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    iget v4, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int v5, v3, v4

    if-ge v5, v2, :cond_2

    sub-int/2addr v3, v4

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-ltz v3, :cond_3

    invoke-direct {p0, v3}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    sub-int/2addr v2, v3

    :goto_1
    if-lez v3, :cond_1

    iget-object v4, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v5, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v5, v3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v1

    or-int/2addr v0, v4

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v1, v1, 0x8

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/util/proto/ProtoParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incomplete fixed32 at offset 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return v0
.end method

.method private blacklist readFixed64()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    const/16 v1, 0x8

    add-int/2addr v0, v1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    const-wide/16 v3, 0xff

    if-gt v0, v2, :cond_0

    invoke-direct {p0, v1}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget p0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/lit8 v2, p0, -0x8

    aget-byte v2, v0, v2

    int-to-long v5, v2

    and-long/2addr v5, v3

    add-int/lit8 v2, p0, -0x7

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v3

    shl-long v1, v7, v1

    or-long/2addr v1, v5

    add-int/lit8 v5, p0, -0x6

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    add-int/lit8 v5, p0, -0x5

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x18

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    add-int/lit8 v5, p0, -0x4

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    add-int/lit8 v5, p0, -0x3

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x28

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    add-int/lit8 v5, p0, -0x2

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x30

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    add-int/lit8 p0, p0, -0x1

    aget-byte p0, v0, p0

    int-to-long v5, p0

    and-long/2addr v3, v5

    const/16 p0, 0x38

    shl-long/2addr v3, p0

    or-long v0, v1, v3

    return-wide v0

    :cond_0
    const-wide/16 v5, 0x0

    const/4 v0, 0x0

    :cond_1
    if-lez v1, :cond_4

    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->fillBuffer()V

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    iget v7, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int v8, v2, v7

    if-ge v8, v1, :cond_2

    sub-int/2addr v2, v7

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-ltz v2, :cond_3

    invoke-direct {p0, v2}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    sub-int/2addr v1, v2

    :goto_1
    if-lez v2, :cond_1

    iget-object v7, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v8, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v8, v2

    aget-byte v7, v7, v8

    int-to-long v7, v7

    and-long/2addr v7, v3

    shl-long/2addr v7, v0

    or-long/2addr v5, v7

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/util/proto/ProtoParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incomplete fixed64 at offset 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-wide v5
.end method

.method private blacklist readRawBytes(I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int v3, v2, p1

    sub-int/2addr v3, v1

    iget v4, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    if-le v3, v4, :cond_2

    sub-int/2addr v4, v2

    if-lez v4, :cond_0

    iget-object v3, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    invoke-static {v3, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v4}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    add-int/2addr v1, v4

    :cond_0
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->fillBuffer()V

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    iget v3, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    if-ge v2, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/util/proto/ProtoParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpectedly reached end of the InputStream at offset 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v3, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    sub-int/2addr p1, v1

    invoke-static {v3, v2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, p1}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    return-object v0
.end method

.method private blacklist readRawString(I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->fillBuffer()V

    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int v1, v0, p1

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    if-gt v1, v2, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-direct {p0, p1}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    return-object v0

    :cond_0
    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mBufferSize:I

    const/4 v3, 0x0

    if-gt p1, v1, :cond_1

    sub-int/2addr v2, v0

    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mStream:Ljava/io/InputStream;

    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    sub-int v4, p1, v2

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    iput v3, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-direct {p0, p1}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/util/proto/ProtoInputStream;->readRawBytes(I)[B

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v3, p1, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private blacklist readTag()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->fillBuffer()V

    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    long-to-int v0, v0

    ushr-int/lit8 v1, v0, 0x3

    iput v1, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    and-int/lit8 v0, v0, 0x7

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    return-void
.end method

.method private blacklist readVarint()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->fillBuffer()V

    iget v4, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    iget v5, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    sub-int/2addr v4, v5

    if-ltz v4, :cond_3

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_2

    iget-object v6, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v7, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    add-int/2addr v7, v5

    aget-byte v6, v6, v7

    int-to-long v7, v6

    const-wide/16 v9, 0x7f

    and-long/2addr v7, v9

    shl-long/2addr v7, v3

    or-long/2addr v0, v7

    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_0

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v5}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    return-wide v0

    :cond_0
    add-int/lit8 v3, v3, 0x7

    const/16 v6, 0x3f

    if-gt v3, v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/util/proto/ProtoParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Varint is too large at offset 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v2

    add-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0, v4}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/util/proto/ProtoParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incomplete varint at offset 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist decodeZigZag32(I)I
    .locals 0

    ushr-int/lit8 p0, p1, 0x1

    and-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    xor-int/2addr p0, p1

    return p0
.end method

.method public blacklist decodeZigZag64(J)J
    .locals 4

    const/4 p0, 0x1

    ushr-long v0, p1, p0

    const-wide/16 v2, 0x1

    and-long p0, p1, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public blacklist dumpDebugData()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\nmFieldNumber : 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmWireType : 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmState : 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmDiscardedBytes : 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmOffset : 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmExpectedObjectTokenStack : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmDepth : 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmBuffer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmBufferSize : 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mBufferSize:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmEnd : 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/util/proto/ProtoInputStream;->mEnd:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist end(J)V
    .locals 3

    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    invoke-virtual {v0, v1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    iget-object p1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget p2, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    invoke-virtual {p1, p2}, Landroid/util/LongArray;->get(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getOffsetFromToken(J)I

    move-result p1

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result p2

    if-le p1, p2, :cond_0

    iget-object p1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget p2, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    invoke-virtual {p1, p2}, Landroid/util/LongArray;->get(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getOffsetFromToken(J)I

    move-result p1

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-direct {p0, p1}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    :cond_0
    iget p1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    iget-byte p1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 p1, p1, -0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    return-void

    :cond_1
    new-instance v0, Landroid/util/proto/ProtoParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "end token "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " does not match current message token "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget p2, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    invoke-virtual {p1, p2}, Landroid/util/LongArray;->get(I)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getFieldNumber()I
    .locals 0

    iget p0, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    return p0
.end method

.method public blacklist getOffset()I
    .locals 1

    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    iget p0, p0, Landroid/util/proto/ProtoInputStream;->mDiscardedBytes:I

    add-int/2addr v0, p0

    return v0
.end method

.method public blacklist getWireType()I
    .locals 2

    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget p0, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    return p0
.end method

.method public blacklist nextField()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    and-int/lit8 v0, v0, -0x5

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    iget p0, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    return p0

    :cond_0
    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->skip()V

    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    :cond_1
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v0

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mPackedEnd:I

    if-ge v0, v2, :cond_2

    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    iget p0, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    return p0

    :cond_2
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v0

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mPackedEnd:I

    if-ne v0, v1, :cond_3

    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v0, v0, -0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/util/proto/ProtoParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpectedly reached end of packed field at offset 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mPackedEnd:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    if-ltz v0, :cond_5

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v0

    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    invoke-virtual {v1, v2}, Landroid/util/LongArray;->get(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/util/proto/ProtoInputStream;->getOffsetFromToken(J)I

    move-result v1

    if-ne v0, v1, :cond_5

    const/4 v0, -0x1

    iput v0, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readTag()V

    :goto_1
    iget p0, p0, Landroid/util/proto/ProtoInputStream;->mFieldNumber:I

    return p0
.end method

.method public blacklist nextField(J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    long-to-int p1, p1

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-byte p1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist readBoolean(J)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->assertFreshData()V

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->checkPacked(J)V

    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    iget-byte p2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 p2, p2, -0x2

    int-to-byte p2, p2

    iput-byte p2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    return p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested field id ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is not an boolean"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist readBytes(J)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->assertFreshData()V

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested field type ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") cannot be read as raw bytes"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide p1

    long-to-int p1, p1

    invoke-direct {p0, p1}, Landroid/util/proto/ProtoInputStream;->readRawBytes(I)[B

    move-result-object p1

    iget-byte p2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 p2, p2, -0x2

    int-to-byte p2, p2

    iput-byte p2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    return-object p1
.end method

.method public blacklist readDouble(J)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->assertFreshData()V

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->checkPacked(J)V

    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v1}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readFixed64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    return-wide p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested field id ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") cannot be read as a double"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist readFloat(J)F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->assertFreshData()V

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->checkPacked(J)V

    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p1, 0x5

    invoke-direct {p0, p1}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readFixed32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    iget-byte p2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 p2, p2, -0x2

    int-to-byte p2, p2

    iput-byte p2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested field id ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is not a float"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist readInt(J)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->assertFreshData()V

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->checkPacked(J)V

    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v3, 0x7

    if-eq v0, v3, :cond_1

    const/16 v3, 0x11

    if-eq v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested field id ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is not an int"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, v1}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide p1

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/util/proto/ProtoInputStream;->decodeZigZag32(I)I

    move-result p1

    goto :goto_0

    :cond_1
    :pswitch_0
    invoke-direct {p0, v2}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readFixed32()I

    move-result p1

    goto :goto_0

    :cond_2
    :pswitch_1
    invoke-direct {p0, v1}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide p1

    long-to-int p1, p1

    :goto_0
    iget-byte p2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 p2, p2, -0x2

    int-to-byte p2, p2

    iput-byte p2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    return p1

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist readLong(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->assertFreshData()V

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->checkPacked(J)V

    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v2}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->decodeZigZag64(J)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested field id ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is not an long"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readFixed64()J

    move-result-wide p1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide p1

    :goto_0
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    return-wide p1
.end method

.method public blacklist readString(J)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->assertFreshData()V

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide p1

    long-to-int p1, p1

    invoke-direct {p0, p1}, Landroid/util/proto/ProtoInputStream;->readRawString(I)Ljava/lang/String;

    move-result-object p1

    iget-byte p2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 p2, p2, -0x2

    int-to-byte p2, p2

    iput-byte p2, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested field id("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is not an string"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist skip()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mPackedEnd:I

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/util/proto/ProtoParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected wire type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mWireType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " at offset 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->fillBuffer()V

    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->fillBuffer()V

    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mBuffer:[B

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mOffset:I

    aget-byte v0, v0, v1

    invoke-direct {p0, v2}, Landroid/util/proto/ProtoInputStream;->incOffset(I)V

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_4

    :goto_0
    iget-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    return-void
.end method

.method public blacklist start(J)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->assertFreshData()V

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->assertFieldNumber(J)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoInputStream;->assertWireType(I)V

    invoke-direct {p0}, Landroid/util/proto/ProtoInputStream;->readVarint()J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/LongArray;

    invoke-direct {v1}, Landroid/util/LongArray;-><init>()V

    iput-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    :cond_0
    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    iget-object v3, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    invoke-virtual {v3}, Landroid/util/LongArray;->size()I

    move-result v3

    const-wide v4, 0x20000000000L

    const/4 v6, 0x0

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    and-long v7, p1, v4

    cmp-long v3, v7, v4

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v6

    :goto_0
    iget v4, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    long-to-int p1, p1

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result p2

    add-int/2addr p2, v0

    invoke-static {v6, v3, v4, p1, p2}, Landroid/util/proto/ProtoInputStream;->makeToken(IZIII)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Landroid/util/LongArray;->add(J)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v3, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    and-long v7, p1, v4

    cmp-long v4, v7, v4

    if-nez v4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v6

    :goto_1
    long-to-int p1, p1

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getOffset()I

    move-result p2

    add-int/2addr p2, v0

    invoke-static {v6, v4, v3, p1, p2}, Landroid/util/proto/ProtoInputStream;->makeToken(IZIII)J

    move-result-wide p1

    invoke-virtual {v1, v3, p1, p2}, Landroid/util/LongArray;->set(IJ)V

    :goto_2
    iget p1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    if-lez p1, :cond_5

    iget-object p2, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    invoke-virtual {p2, p1}, Landroid/util/LongArray;->get(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Landroid/util/proto/ProtoInputStream;->getOffsetFromToken(J)I

    move-result p1

    iget-object p2, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v0, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    sub-int/2addr v0, v2

    invoke-virtual {p2, v0}, Landroid/util/LongArray;->get(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/util/proto/ProtoInputStream;->getOffsetFromToken(J)I

    move-result p2

    if-gt p1, p2, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Landroid/util/proto/ProtoParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Embedded Object ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    invoke-virtual {v0, v1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/util/proto/ProtoInputStream;->token2String(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") ends after of parent Objects\'s ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget v1, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/util/proto/ProtoInputStream;->token2String(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") end"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->dumpDebugData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_3
    iget-byte p1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    and-int/lit8 p1, p1, -0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/util/proto/ProtoInputStream;->mState:B

    iget-object p1, p0, Landroid/util/proto/ProtoInputStream;->mExpectedObjectTokenStack:Landroid/util/LongArray;

    iget p0, p0, Landroid/util/proto/ProtoInputStream;->mDepth:I

    invoke-virtual {p1, p0}, Landroid/util/LongArray;->get(I)J

    move-result-wide p0

    return-wide p0
.end method

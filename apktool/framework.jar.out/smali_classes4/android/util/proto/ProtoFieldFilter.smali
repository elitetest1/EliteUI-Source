.class public Landroid/util/proto/ProtoFieldFilter;
.super Ljava/lang/Object;
.source "ProtoFieldFilter.java"


# static fields
.field private static final blacklist BUFFER_SIZE_BYTES:I = 0x1000


# instance fields
.field private final blacklist mBuffer:[B

.field private final blacklist mFieldPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mVarIntBuffer:[B


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x1000

    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoFieldFilter;-><init>(Ljava/util/function/Predicate;I)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/function/Predicate;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/util/proto/ProtoFieldFilter;->mVarIntBuffer:[B

    iput-object p1, p0, Landroid/util/proto/ProtoFieldFilter;->mFieldPredicate:Ljava/util/function/Predicate;

    new-array p1, p2, [B

    iput-object p1, p0, Landroid/util/proto/ProtoFieldFilter;->mBuffer:[B

    return-void
.end method

.method private blacklist copyFieldData(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x5

    if-ne p3, v0, :cond_0

    const/4 p3, 0x4

    invoke-direct {p0, p1, p2, p3}, Landroid/util/proto/ProtoFieldFilter;->copyFixed(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unknown or unsupported wire type: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoFieldFilter;->copyLengthDelimited(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void

    :cond_2
    const/16 p3, 0x8

    invoke-direct {p0, p1, p2, p3}, Landroid/util/proto/ProtoFieldFilter;->copyFixed(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    return-void

    :cond_3
    invoke-static {p1, p2}, Landroid/util/proto/ProtoFieldFilter;->copyVarint(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method private blacklist copyFixed(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v0, p3

    :goto_0
    if-lez v0, :cond_1

    iget-object v1, p0, Landroid/util/proto/ProtoFieldFilter;->mBuffer:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Landroid/util/proto/ProtoFieldFilter;->mBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Landroid/util/proto/ProtoFieldFilter;->mBuffer:[B

    invoke-virtual {p2, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "EOF while copying fixed"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-int/lit8 p3, p3, 0x8

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " field"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method private blacklist copyLengthDelimited(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/util/proto/ProtoFieldFilter;->readRawVarint(Ljava/io/InputStream;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Landroid/util/proto/ProtoFieldFilter;->mVarIntBuffer:[B

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    iget-object v1, p0, Landroid/util/proto/ProtoFieldFilter;->mVarIntBuffer:[B

    invoke-static {v1, v0}, Landroid/util/proto/ProtoFieldFilter;->parseVarint([BI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    long-to-int v0, v0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/proto/ProtoFieldFilter;->copyFixed(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Invalid length for length-delimited field: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "EOF reading length for length-delimited field"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist copyVarint(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    return-void

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "EOF while copying varint"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist parseVarint([BI)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, p1, :cond_1

    aget-byte v4, p0, v2

    and-int/lit8 v4, v4, 0x7f

    shl-int/2addr v4, v3

    int-to-long v4, v4

    or-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x7

    const/16 v4, 0x3f

    if-gt v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Malformed varint: exceeds 64 bits"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-wide v0
.end method

.method private blacklist readRawVarint(Ljava/io/InputStream;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Landroid/util/proto/ProtoFieldFilter;->mVarIntBuffer:[B

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    const/4 v1, 0x1

    :goto_0
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_2

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/util/proto/ProtoFieldFilter;->mVarIntBuffer:[B

    add-int/lit8 v3, v1, 0x1

    int-to-byte v4, v0

    aput-byte v4, v2, v1

    move v1, v3

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Malformed varint: too many bytes (max 10)"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Malformed varint: reached EOF mid-varint"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return v1
.end method

.method private blacklist skipBytes(Ljava/io/InputStream;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    cmp-long v2, v0, p2

    if-gez v2, :cond_1

    :goto_0
    sub-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    iget-object v1, p0, Landroid/util/proto/ProtoFieldFilter;->mBuffer:[B

    array-length v1, v1

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, p0, Landroid/util/proto/ProtoFieldFilter;->mBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v0, :cond_0

    int-to-long v0, v1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "EOF while skipping bytes"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method private blacklist skipFieldData(Ljava/io/InputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    const-wide/16 v0, 0x4

    invoke-direct {p0, p1, v0, v1}, Landroid/util/proto/ProtoFieldFilter;->skipBytes(Ljava/io/InputStream;J)V

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unknown or unsupported wire type: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-direct {p0, p1}, Landroid/util/proto/ProtoFieldFilter;->skipLengthDelimited(Ljava/io/InputStream;)V

    return-void

    :cond_2
    const-wide/16 v0, 0x8

    invoke-direct {p0, p1, v0, v1}, Landroid/util/proto/ProtoFieldFilter;->skipBytes(Ljava/io/InputStream;J)V

    return-void

    :cond_3
    invoke-static {p1}, Landroid/util/proto/ProtoFieldFilter;->skipVarint(Ljava/io/InputStream;)V

    return-void
.end method

.method private blacklist skipLengthDelimited(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/util/proto/ProtoFieldFilter;->readRawVarint(Ljava/io/InputStream;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Landroid/util/proto/ProtoFieldFilter;->mVarIntBuffer:[B

    invoke-static {v1, v0}, Landroid/util/proto/ProtoFieldFilter;->parseVarint([BI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    invoke-direct {p0, p1, v0, v1}, Landroid/util/proto/ProtoFieldFilter;->skipBytes(Ljava/io/InputStream;J)V

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid length to skip: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "EOF reading length for length-delimited field"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist skipVarint(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_2

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Malformed varint: exceeds maximum length of 10 bytes"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "EOF while skipping varint"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist filter(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-direct {p0, p1}, Landroid/util/proto/ProtoFieldFilter;->readRawVarint(Ljava/io/InputStream;)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v1, p0, Landroid/util/proto/ProtoFieldFilter;->mVarIntBuffer:[B

    invoke-static {v1, v0}, Landroid/util/proto/ProtoFieldFilter;->parseVarint([BI)J

    move-result-wide v1

    const/4 v3, 0x3

    ushr-long v3, v1, v3

    long-to-int v3, v3

    const-wide/16 v4, 0x7

    and-long/2addr v1, v4

    long-to-int v1, v1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Landroid/util/proto/ProtoFieldFilter;->mFieldPredicate:Ljava/util/function/Predicate;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/util/proto/ProtoFieldFilter;->mVarIntBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    invoke-direct {p0, p1, p2, v1}, Landroid/util/proto/ProtoFieldFilter;->copyFieldData(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v1}, Landroid/util/proto/ProtoFieldFilter;->skipFieldData(Ljava/io/InputStream;I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

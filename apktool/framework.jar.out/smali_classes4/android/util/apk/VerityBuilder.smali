.class public abstract Landroid/util/apk/VerityBuilder;
.super Ljava/lang/Object;
.source "VerityBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/VerityBuilder$VerityResult;,
        Landroid/util/apk/VerityBuilder$BufferedDigester;
    }
.end annotation


# static fields
.field private static final blacklist CHUNK_SIZE_BYTES:I = 0x1000

.field private static final blacklist DEFAULT_SALT:[B

.field private static final blacklist DIGEST_SIZE_BYTES:I = 0x20

.field private static final blacklist FSVERITY_HEADER_SIZE_BYTES:I = 0x40

.field private static final blacklist JCA_DIGEST_ALGORITHM:Ljava/lang/String; = "SHA-256"

.field private static final blacklist MMAP_REGION_SIZE_BYTES:I = 0x100000

.field private static final blacklist ZIP_EOCD_CENTRAL_DIR_OFFSET_FIELD_OFFSET:I = 0x10

.field private static final blacklist ZIP_EOCD_CENTRAL_DIR_OFFSET_FIELD_SIZE:I = 0x4


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    sput-object v0, Landroid/util/apk/VerityBuilder;->DEFAULT_SALT:[B

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist assertSigningBlockAlignedAndHasFullPages(Landroid/util/apk/SignatureInfo;)V
    .locals 8

    iget-wide v0, p0, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    const-wide/16 v2, 0x1000

    rem-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    iget-wide v0, p0, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    iget-wide v6, p0, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    sub-long/2addr v0, v6

    rem-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Size of APK Signing Block is not a multiple of 4096: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    iget-wide v4, p0, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "APK Signing Block does not start at the page boundary: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist calculateVerityLevelOffset(J)[I
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const-wide/16 v1, 0x1000

    invoke-static {p0, p1, v1, v2}, Landroid/util/apk/VerityBuilder;->divideRoundup(JJ)J

    move-result-wide p0

    const-wide/16 v3, 0x20

    mul-long/2addr p0, v3

    invoke-static {p0, p1, v1, v2}, Landroid/util/apk/VerityBuilder;->divideRoundup(JJ)J

    move-result-wide v3

    mul-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    cmp-long v1, p0, v1

    if-gtz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    new-array p0, p0, [I

    const/4 p1, 0x0

    aput p1, p0, p1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    add-int/lit8 v1, p1, 0x1

    aget v2, p0, p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toIntExact(J)I

    move-result p1

    add-int/2addr v2, p1

    aput v2, p0, v1

    move p1, v1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private static blacklist consumeByChunk(Landroid/util/apk/DataDigester;Landroid/util/apk/DataSource;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/DigestException;
        }
    .end annotation

    invoke-interface {p1}, Landroid/util/apk/DataSource;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_0
    cmp-long v6, v0, v2

    if-lez v6, :cond_0

    int-to-long v6, p2

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-interface {p1, p0, v4, v5, v6}, Landroid/util/apk/DataSource;->feedIntoDataDigester(Landroid/util/apk/DataDigester;JI)V

    int-to-long v6, v6

    add-long/2addr v4, v6

    sub-long/2addr v0, v6

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static blacklist divideRoundup(JJ)J
    .locals 2

    add-long/2addr p0, p2

    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    div-long/2addr p0, p2

    return-wide p0
.end method

.method static blacklist generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;Landroid/util/apk/SignatureInfo;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/security/DigestException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v0, p1, p2}, Landroid/util/apk/VerityBuilder;->generateVerityTreeInternal(Ljava/io/RandomAccessFile;Landroid/util/apk/ByteBufferFactory;Landroid/util/apk/SignatureInfo;)Landroid/util/apk/VerityBuilder$VerityResult;

    move-result-object p0

    iget-object p1, p0, Landroid/util/apk/VerityBuilder$VerityResult;->verityData:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroid/util/apk/VerityBuilder$VerityResult;->merkleTreeSize:I

    iget-object v2, p0, Landroid/util/apk/VerityBuilder$VerityResult;->verityData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/util/apk/VerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {v0, p2, p1}, Landroid/util/apk/VerityBuilder;->generateApkVerityFooter(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object p2, p0, Landroid/util/apk/VerityBuilder$VerityResult;->verityData:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroid/util/apk/VerityBuilder$VerityResult;->merkleTreeSize:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object p0, p0, Landroid/util/apk/VerityBuilder$VerityResult;->rootHash:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method private static blacklist generateApkVerityDigestAtLeafLevel(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;[BLjava/nio/ByteBuffer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    new-instance v0, Landroid/util/apk/VerityBuilder$BufferedDigester;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Landroid/util/apk/VerityBuilder$BufferedDigester;-><init>([BLjava/nio/ByteBuffer;Landroid/util/apk/VerityBuilder-IA;)V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    const-wide/16 v1, 0x0

    iget-wide v3, p1, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    invoke-static {p2, v1, v2, v3, v4}, Landroid/util/apk/DataSource;->create(Ljava/io/FileDescriptor;JJ)Landroid/util/apk/DataSource;

    move-result-object p2

    const/high16 p3, 0x100000

    invoke-static {v0, p2, p3}, Landroid/util/apk/VerityBuilder;->consumeByChunk(Landroid/util/apk/DataDigester;Landroid/util/apk/DataSource;I)V

    iget-wide v1, p1, Landroid/util/apk/SignatureInfo;->eocdOffset:J

    const-wide/16 v3, 0x10

    add-long/2addr v3, v1

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    iget-wide v5, p1, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    iget-wide v7, p1, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    sub-long/2addr v3, v7

    invoke-static {p2, v5, v6, v3, v4}, Landroid/util/apk/DataSource;->create(Ljava/io/FileDescriptor;JJ)Landroid/util/apk/DataSource;

    move-result-object p2

    invoke-static {v0, p2, p3}, Landroid/util/apk/VerityBuilder;->consumeByChunk(Landroid/util/apk/DataDigester;Landroid/util/apk/DataSource;I)V

    const/4 p2, 0x4

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    iget-wide v3, p1, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    invoke-static {v3, v4}, Ljava/lang/Math;->toIntExact(J)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0, p2}, Landroid/util/apk/VerityBuilder$BufferedDigester;->consume(Ljava/nio/ByteBuffer;)V

    const-wide/16 p1, 0x14

    add-long/2addr v1, p1

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {p1, v1, v2, v3, v4}, Landroid/util/apk/DataSource;->create(Ljava/io/FileDescriptor;JJ)Landroid/util/apk/DataSource;

    move-result-object p1

    invoke-static {v0, p1, p3}, Landroid/util/apk/VerityBuilder;->consumeByChunk(Landroid/util/apk/DataDigester;Landroid/util/apk/DataSource;I)V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide p0

    const-wide/16 p2, 0x1000

    rem-long/2addr p0, p2

    long-to-int p0, p0

    if-eqz p0, :cond_0

    rsub-int p0, p0, 0x1000

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/apk/VerityBuilder$BufferedDigester;->consume(Ljava/nio/ByteBuffer;)V

    :cond_0
    invoke-virtual {v0}, Landroid/util/apk/VerityBuilder$BufferedDigester;->assertEmptyBuffer()V

    invoke-static {v0}, Landroid/util/apk/VerityBuilder$BufferedDigester;->-$$Nest$mfillUpLastOutputChunk(Landroid/util/apk/VerityBuilder$BufferedDigester;)V

    return-void
.end method

.method private static blacklist generateApkVerityExtensions(Ljava/nio/ByteBuffer;JJJ)Ljava/nio/ByteBuffer;
    .locals 1

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/apk/VerityBuilder;->skip(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p3, p4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    const/16 p3, 0x14

    invoke-virtual {p0, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-static {p0, v0}, Landroid/util/apk/VerityBuilder;->skip(Ljava/nio/ByteBuffer;I)V

    const-wide/16 p3, 0x10

    add-long/2addr p5, p3

    invoke-virtual {p0, p5, p6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Ljava/lang/Math;->toIntExact(J)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p1, 0x4

    invoke-static {p0, p1}, Landroid/util/apk/VerityBuilder;->skip(Ljava/nio/ByteBuffer;I)V

    return-object p0
.end method

.method static blacklist generateApkVerityFooter(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;Ljava/nio/ByteBuffer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    sget-object p0, Landroid/util/apk/VerityBuilder;->DEFAULT_SALT:[B

    invoke-static {p2, v0, v1, p0}, Landroid/util/apk/VerityBuilder;->generateApkVerityHeader(Ljava/nio/ByteBuffer;J[B)Ljava/nio/ByteBuffer;

    iget-wide v0, p1, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    iget-wide v2, p1, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    sub-long v7, v0, v2

    iget-wide v5, p1, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    iget-wide v9, p1, Landroid/util/apk/SignatureInfo;->eocdOffset:J

    move-object v4, p2

    invoke-static/range {v4 .. v10}, Landroid/util/apk/VerityBuilder;->generateApkVerityExtensions(Ljava/nio/ByteBuffer;JJJ)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private static blacklist generateApkVerityHeader(Ljava/nio/ByteBuffer;J[B)Ljava/nio/ByteBuffer;
    .locals 3

    array-length v0, p3

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const-string v0, "TrueBrew"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/16 p1, 0x16

    invoke-static {p0, p1}, Landroid/util/apk/VerityBuilder;->skip(Ljava/nio/ByteBuffer;I)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "salt is not 8 bytes long"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist generateApkVerityTree(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;Landroid/util/apk/ByteBufferFactory;)Landroid/util/apk/VerityBuilder$VerityResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    invoke-static {p0, p2, p1}, Landroid/util/apk/VerityBuilder;->generateVerityTreeInternal(Ljava/io/RandomAccessFile;Landroid/util/apk/ByteBufferFactory;Landroid/util/apk/SignatureInfo;)Landroid/util/apk/VerityBuilder$VerityResult;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist generateFsVerityDigestAtLeafLevel(Ljava/io/RandomAccessFile;[BLjava/nio/ByteBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    new-instance v0, Landroid/util/apk/VerityBuilder$BufferedDigester;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/util/apk/VerityBuilder$BufferedDigester;-><init>([BLjava/nio/ByteBuffer;Landroid/util/apk/VerityBuilder-IA;)V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Landroid/util/apk/DataSource;->create(Ljava/io/FileDescriptor;JJ)Landroid/util/apk/DataSource;

    move-result-object p1

    const/high16 p2, 0x100000

    invoke-static {v0, p1, p2}, Landroid/util/apk/VerityBuilder;->consumeByChunk(Landroid/util/apk/DataDigester;Landroid/util/apk/DataSource;I)V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide p0

    const-wide/16 v1, 0x1000

    rem-long/2addr p0, v1

    long-to-int p0, p0

    if-eqz p0, :cond_0

    rsub-int p0, p0, 0x1000

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/apk/VerityBuilder$BufferedDigester;->consume(Ljava/nio/ByteBuffer;)V

    :cond_0
    invoke-virtual {v0}, Landroid/util/apk/VerityBuilder$BufferedDigester;->assertEmptyBuffer()V

    invoke-static {v0}, Landroid/util/apk/VerityBuilder$BufferedDigester;->-$$Nest$mfillUpLastOutputChunk(Landroid/util/apk/VerityBuilder$BufferedDigester;)V

    return-void
.end method

.method public static blacklist generateFsVerityRootHash(Ljava/lang/String;[BLandroid/util/apk/ByteBufferFactory;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/util/apk/VerityBuilder;->calculateVerityLevelOffset(J)[I

    move-result-object p0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget v1, p0, v1

    add-int/lit16 v2, v1, 0x1000

    invoke-interface {p2, v2}, Landroid/util/apk/ByteBufferFactory;->create(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-static {p2, v2, v1}, Landroid/util/apk/VerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {v0, p1, p0, p2}, Landroid/util/apk/VerityBuilder;->generateFsVerityTreeInternal(Ljava/io/RandomAccessFile;[B[ILjava/nio/ByteBuffer;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method private static blacklist generateFsVerityTreeInternal(Ljava/io/RandomAccessFile;[B[ILjava/nio/ByteBuffer;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    array-length v0, p2

    add-int/lit8 v0, v0, -0x2

    aget v0, p2, v0

    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    aget v1, p2, v1

    invoke-static {p3, v0, v1}, Landroid/util/apk/VerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/util/apk/VerityBuilder;->generateFsVerityDigestAtLeafLevel(Ljava/io/RandomAccessFile;[BLjava/nio/ByteBuffer;)V

    array-length p0, p2

    add-int/lit8 p0, p0, -0x3

    :goto_0
    const/16 v0, 0x1000

    const/4 v1, 0x0

    if-ltz p0, :cond_0

    add-int/lit8 v2, p0, 0x1

    aget v3, p2, v2

    add-int/lit8 v4, p0, 0x2

    aget v4, p2, v4

    invoke-static {p3, v3, v4}, Landroid/util/apk/VerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v3

    aget v4, p2, p0

    aget v2, p2, v2

    invoke-static {p3, v4, v2}, Landroid/util/apk/VerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v2

    new-instance v4, Landroid/util/apk/ByteBufferDataSource;

    invoke-direct {v4, v3}, Landroid/util/apk/ByteBufferDataSource;-><init>(Ljava/nio/ByteBuffer;)V

    new-instance v3, Landroid/util/apk/VerityBuilder$BufferedDigester;

    invoke-direct {v3, p1, v2, v1}, Landroid/util/apk/VerityBuilder$BufferedDigester;-><init>([BLjava/nio/ByteBuffer;Landroid/util/apk/VerityBuilder-IA;)V

    invoke-static {v3, v4, v0}, Landroid/util/apk/VerityBuilder;->consumeByChunk(Landroid/util/apk/DataDigester;Landroid/util/apk/DataSource;I)V

    invoke-virtual {v3}, Landroid/util/apk/VerityBuilder$BufferedDigester;->assertEmptyBuffer()V

    invoke-static {v3}, Landroid/util/apk/VerityBuilder$BufferedDigester;->-$$Nest$mfillUpLastOutputChunk(Landroid/util/apk/VerityBuilder$BufferedDigester;)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x20

    new-array p0, p0, [B

    new-instance p2, Landroid/util/apk/VerityBuilder$BufferedDigester;

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {p2, p1, v2, v1}, Landroid/util/apk/VerityBuilder$BufferedDigester;-><init>([BLjava/nio/ByteBuffer;Landroid/util/apk/VerityBuilder-IA;)V

    const/4 p1, 0x0

    invoke-static {p3, p1, v0}, Landroid/util/apk/VerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/apk/VerityBuilder$BufferedDigester;->consume(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p2}, Landroid/util/apk/VerityBuilder$BufferedDigester;->assertEmptyBuffer()V

    return-object p0
.end method

.method private static blacklist generateVerityTreeInternal(Ljava/io/RandomAccessFile;Landroid/util/apk/ByteBufferFactory;Landroid/util/apk/SignatureInfo;)Landroid/util/apk/VerityBuilder$VerityResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    iget-wide v0, p2, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    iget-wide v2, p2, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Landroid/util/apk/VerityBuilder;->calculateVerityLevelOffset(J)[I

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    add-int/lit16 v2, v1, 0x1000

    invoke-interface {p1, v2}, Landroid/util/apk/ByteBufferFactory;->create(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Landroid/util/apk/VerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Landroid/util/apk/VerityBuilder;->DEFAULT_SALT:[B

    invoke-static {p0, p2, v3, v0, v2}, Landroid/util/apk/VerityBuilder;->generateVerityTreeInternal(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;[B[ILjava/nio/ByteBuffer;)[B

    move-result-object p0

    new-instance p2, Landroid/util/apk/VerityBuilder$VerityResult;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v1, p0, v0}, Landroid/util/apk/VerityBuilder$VerityResult;-><init>(Ljava/nio/ByteBuffer;I[BLandroid/util/apk/VerityBuilder-IA;)V

    return-object p2
.end method

.method private static blacklist generateVerityTreeInternal(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;[B[ILjava/nio/ByteBuffer;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    invoke-static {p1}, Landroid/util/apk/VerityBuilder;->assertSigningBlockAlignedAndHasFullPages(Landroid/util/apk/SignatureInfo;)V

    array-length v0, p3

    add-int/lit8 v0, v0, -0x2

    aget v0, p3, v0

    array-length v1, p3

    add-int/lit8 v1, v1, -0x1

    aget v1, p3, v1

    invoke-static {p4, v0, v1}, Landroid/util/apk/VerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Landroid/util/apk/VerityBuilder;->generateApkVerityDigestAtLeafLevel(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;[BLjava/nio/ByteBuffer;)V

    array-length p0, p3

    add-int/lit8 p0, p0, -0x3

    :goto_0
    const/16 p1, 0x1000

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    add-int/lit8 v1, p0, 0x1

    aget v2, p3, v1

    add-int/lit8 v3, p0, 0x2

    aget v3, p3, v3

    invoke-static {p4, v2, v3}, Landroid/util/apk/VerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v2

    aget v3, p3, p0

    aget v1, p3, v1

    invoke-static {p4, v3, v1}, Landroid/util/apk/VerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-instance v3, Landroid/util/apk/ByteBufferDataSource;

    invoke-direct {v3, v2}, Landroid/util/apk/ByteBufferDataSource;-><init>(Ljava/nio/ByteBuffer;)V

    new-instance v2, Landroid/util/apk/VerityBuilder$BufferedDigester;

    invoke-direct {v2, p2, v1, v0}, Landroid/util/apk/VerityBuilder$BufferedDigester;-><init>([BLjava/nio/ByteBuffer;Landroid/util/apk/VerityBuilder-IA;)V

    invoke-static {v2, v3, p1}, Landroid/util/apk/VerityBuilder;->consumeByChunk(Landroid/util/apk/DataDigester;Landroid/util/apk/DataSource;I)V

    invoke-virtual {v2}, Landroid/util/apk/VerityBuilder$BufferedDigester;->assertEmptyBuffer()V

    invoke-static {v2}, Landroid/util/apk/VerityBuilder$BufferedDigester;->-$$Nest$mfillUpLastOutputChunk(Landroid/util/apk/VerityBuilder$BufferedDigester;)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x20

    new-array p0, p0, [B

    new-instance p3, Landroid/util/apk/VerityBuilder$BufferedDigester;

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {p3, p2, v1, v0}, Landroid/util/apk/VerityBuilder$BufferedDigester;-><init>([BLjava/nio/ByteBuffer;Landroid/util/apk/VerityBuilder-IA;)V

    const/4 p2, 0x0

    invoke-static {p4, p2, p1}, Landroid/util/apk/VerityBuilder;->slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/util/apk/VerityBuilder$BufferedDigester;->consume(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p3}, Landroid/util/apk/VerityBuilder$BufferedDigester;->assertEmptyBuffer()V

    return-object p0
.end method

.method private static blacklist skip(Ljava/nio/ByteBuffer;I)V
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private static blacklist slice(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

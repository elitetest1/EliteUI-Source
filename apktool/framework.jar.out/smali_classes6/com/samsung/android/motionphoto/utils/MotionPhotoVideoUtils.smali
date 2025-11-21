.class public final Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;
.super Ljava/lang/Object;
.source "MotionPhotoVideoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;,
        Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$VideoInfo;
    }
.end annotation


# static fields
.field private static final blacklist JPEG_LENGTH_SIZE:I = 0x2

.field private static final blacklist JPEG_MARKER_SIZE:I = 0x2

.field private static final blacklist MOTION_PHOTO_V2_SIGNATURE:Ljava/lang/String; = "mpv2"

.field private static final blacklist MOTION_PHOTO_V2_SIGNATURE_SIZE:I = 0x4

.field public static final blacklist SEF_DATA_MOTION_PHOTO:I = 0xa30

.field private static final blacklist TAG:Ljava/lang/String; = "MotionPhotoVideoUtils"

.field private static final blacklist XMP_RESERVED_SIZE:I = 0x500

.field private static blacklist isJpeg:Z

.field private static blacklist xmpPosition:J


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p0, "MotionPhotoVideoUtils"

    invoke-static {p0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    sput-boolean p0, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->isJpeg:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->xmpPosition:J

    return-void
.end method

.method private final blacklist isJpeg(Ljava/io/FileDescriptor;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fd"
        }
    .end annotation

    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/4 v0, 0x2

    new-array v1, v0, [B

    invoke-virtual {p0, v1, p1, v0}, Ljava/io/FileInputStream;->read([BII)I

    aget-byte v0, v1, p1

    const/16 v2, 0xff

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    aget-byte v1, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/2addr v1, v2

    const/16 v2, 0xd8

    if-ne v1, v2, :cond_0

    move p1, v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return p1

    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    throw p1
.end method

.method private final blacklist removeXmp(Ljava/io/FileDescriptor;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "read bytes("

    const-string/jumbo v1, "removeXmp"

    const-string v2, "MotionPhotoVideoUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->seekToXmpStartPosition(Ljava/io/FileDescriptor;)J

    move-result-wide v3

    sput-wide v3, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->xmpPosition:J

    sget-boolean p0, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->isJpeg:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/4 v1, 0x2

    const/4 v3, 0x0

    :try_start_0
    new-array v4, v1, [B

    invoke-virtual {p0, v4}, Ljava/io/FileInputStream;->read([B)I

    const/4 v5, 0x0

    aget-byte v6, v4, v5

    const/16 v7, 0xff

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    aget-byte v4, v4, v6

    and-int/2addr v4, v7

    const/16 v8, 0xe1

    if-ne v4, v8, :cond_1

    new-array v4, v1, [B

    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    aget-byte v5, v4, v5

    and-int/2addr v5, v7

    shl-int/lit8 v5, v5, 0x8

    aget-byte v4, v4, v6

    and-int/2addr v4, v7

    or-int/2addr v4, v5

    add-int/2addr v4, v1

    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    sget-wide v7, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->xmpPosition:J

    sub-long/2addr v5, v7

    int-to-long v7, v4

    sub-long/2addr v5, v7

    long-to-int v1, v5

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    sget-wide v4, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->xmpPosition:J

    add-long/2addr v4, v7

    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") differ from buffer size("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    if-eqz v3, :cond_3

    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    :try_start_2
    sget-wide v0, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->xmpPosition:J

    invoke-virtual {p0, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p0, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x500

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    throw p1

    :cond_2
    const/16 p0, 0x500

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    :try_start_3
    sget-wide v0, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->xmpPosition:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-void

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    return-void
.end method

.method private final blacklist seekToXmpStartPosition(Ljava/io/FileDescriptor;)J
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "XMP "

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    sget-boolean p1, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->isJpeg:Z

    const-string v1, "MotionPhotoVideoUtils"

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_4

    const-string p0, "//JPEG//"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x400

    new-array p0, p0, [B

    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/4 p1, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, p0, v4, p1}, Ljava/io/FileInputStream;->read([BII)I

    :cond_0
    :goto_0
    invoke-virtual {v0, p0, v4, p1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    if-lez v5, :cond_3

    new-instance v5, Landroid/util/Pair;

    aget-byte v6, p0, v4

    const/16 v7, 0xff

    and-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aget-byte v9, p0, v8

    and-int/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v6, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-ne v6, v7, :cond_2

    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    const/16 v9, 0xd0

    if-gt v9, v6, :cond_1

    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    const/16 v9, 0xd7

    if-lt v9, v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0, v4, p1}, Ljava/io/FileInputStream;->read([BII)I

    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    const/16 v9, 0xdd

    if-eq v6, v9, :cond_0

    aget-byte v6, p0, v4

    and-int/2addr v6, v7

    shl-int/lit8 v6, v6, 0x8

    aget-byte v8, p0, v8

    and-int/2addr v7, v8

    or-int/2addr v6, v7

    int-to-long v6, v6

    const-wide/16 v8, 0x2

    sub-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/io/FileInputStream;->skip(J)J

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    const/16 v6, 0xe1

    if-ne v5, v6, :cond_0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-wide v2

    :cond_2
    const-string/jumbo p0, "this is not valid markers"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-wide v2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_4
    const-string p1, "//HEIF//"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/samsung/android/motionphoto/utils/HEIFParser;

    invoke-direct {p1}, Lcom/samsung/android/motionphoto/utils/HEIFParser;-><init>()V

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, v0}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->getCoverImageXMPOffsetAndSize(Ljava/io/InputStream;)Lcom/samsung/android/motionphoto/utils/HEIFParser$XMPInformation;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, p1, Lcom/samsung/android/motionphoto/utils/HEIFParser$XMPInformation;->offset:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p1, Lcom/samsung/android/motionphoto/utils/HEIFParser$XMPInformation;->size:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p1, Lcom/samsung/android/motionphoto/utils/HEIFParser$XMPInformation;->offset:J

    goto :goto_1

    :cond_5
    const-string p0, "Fail to get xmp information"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :goto_2
    return-wide v2

    :goto_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw p0
.end method


# virtual methods
.method public final blacklist deleteVideo(Ljava/io/File;)Z
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "srcFile"
        }
    .end annotation

    const-string v0, "MotionPhoto_Data"

    const-string v1, "deleteVideo"

    const-string v2, "MotionPhotoVideoUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->getSEFDataPosition(Ljava/io/File;Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;->getOffset()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;->getLength()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;->isMotionPhotoV2()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string/jumbo v7, "rw"

    if-eqz v1, :cond_0

    :try_start_1
    const-string v8, "MotionPhotoV2"

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/io/RandomAccessFile;

    invoke-direct {v8, p1, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v9

    add-long/2addr v5, v3

    sub-long/2addr v9, v5

    long-to-int v11, v9

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12

    invoke-virtual {v12, v11, v5, v6}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v5, 0x8

    sub-long/2addr v3, v5

    invoke-virtual {v12, v11, v3, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    add-long/2addr v3, v9

    invoke-virtual {v12, v3, v4}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v12}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_5
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    throw p0

    :cond_0
    const-string v3, "Not MotionPhotoV2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-static {p1, v0}, Lcom/samsung/android/media/SemExtendedFormat;->deleteData(Ljava/io/File;Ljava/lang/String;)Z

    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, p1, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->isJpeg(Ljava/io/FileDescriptor;)Z

    move-result v3

    sput-boolean v3, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->isJpeg:Z

    if-nez v1, :cond_2

    if-eqz v3, :cond_1

    goto :goto_3

    :cond_1
    const-string p0, "There is no xmp"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_2
    :goto_3
    invoke-direct {p0, p1}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->removeXmp(Ljava/io/FileDescriptor;)V

    :goto_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    const/4 p0, 0x1

    goto :goto_5

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public final blacklist deleteVideo(Ljava/io/File;Ljava/io/File;)Z
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "srcFile",
            "outFile"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "MotionPhoto_Data"

    const-string v0, "deleteVideo"

    const-string v4, "MotionPhotoVideoUtils"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/nio/file/CopyOption;

    sget-object v9, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v9, v8, v5

    invoke-static {v0, v6, v8}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->getSEFDataPosition(Ljava/io/File;Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;->getOffset()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;->getLength()J

    move-result-wide v10

    invoke-virtual {v0}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;->isMotionPhotoV2()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string/jumbo v12, "rw"

    if-eqz v6, :cond_0

    :try_start_1
    const-string v0, "MotionPhotoV2"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Ljava/io/RandomAccessFile;

    invoke-direct {v13, v2, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v14

    add-long/2addr v10, v8

    sub-long/2addr v14, v10

    long-to-int v0, v14

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-virtual {v5, v0, v10, v11}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v10, 0x8

    sub-long/2addr v8, v10

    invoke-virtual {v5, v0, v8, v9}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    add-long/2addr v8, v14

    invoke-virtual {v5, v8, v9}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_5
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V

    throw v0

    :cond_0
    const-string v0, "Not MotionPhotoV2"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-static {v2, v3}, Lcom/samsung/android/media/SemExtendedFormat;->deleteData(Ljava/io/File;Ljava/lang/String;)Z

    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, v2, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->isJpeg(Ljava/io/FileDescriptor;)Z

    move-result v3

    sput-boolean v3, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->isJpeg:Z

    if-nez v6, :cond_2

    if-eqz v3, :cond_1

    goto :goto_3

    :cond_1
    const-string v1, "There is no xmp"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_2
    :goto_3
    invoke-direct {v1, v2}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->removeXmp(Ljava/io/FileDescriptor;)V

    :goto_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    move v5, v7

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v5, 0x0

    :goto_5
    return v5
.end method

.method public final blacklist getSEFDataPosition(Ljava/io/File;Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;
    .locals 28
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "tag"
        }
    .end annotation

    const-string v1, "MotionPhotoVideoUtils"

    const-string v0, "This file is a MotionPhoto V2 format - offset:"

    const-string v2, "This file is not a MotionPhoto V2 format - offset:"

    :try_start_0
    invoke-static/range {p1 .. p2}, Lcom/samsung/android/media/SemExtendedFormat;->getDataPosition(Ljava/io/File;Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$DataPosition;

    move-result-object v3

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    iget-wide v7, v3, Lcom/samsung/android/media/SemExtendedFormat$DataPosition;->offset:J

    iget-wide v9, v3, Lcom/samsung/android/media/SemExtendedFormat$DataPosition;->length:J

    new-instance v3, Ljava/io/FileInputStream;

    move-object/from16 v11, p1

    invoke-direct {v3, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/4 v11, 0x4

    new-array v12, v11, [B

    invoke-virtual {v3, v12, v6, v11}, Ljava/io/FileInputStream;->read([BII)I

    const-string/jumbo v13, "mpv2"

    const-string/jumbo v14, "utf-8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-static {v12, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v14, " length:"

    if-eqz v13, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    const-wide/16 v9, 0x4

    add-long/2addr v9, v7

    invoke-virtual {v2, v9, v10}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v3, v12, v6, v11}, Ljava/io/FileInputStream;->read([BII)I

    const/4 v2, 0x3

    aget-byte v9, v12, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v9, v9

    const-wide/16 v15, 0xff

    and-long/2addr v9, v15

    const/16 v17, 0x2

    move/from16 p0, v2

    :try_start_3
    aget-byte v2, v12, v17
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    int-to-long v4, v2

    const/16 v2, 0x8

    shl-long/2addr v4, v2

    const-wide/32 v18, 0xff00

    and-long v4, v4, v18

    or-long/2addr v4, v9

    const/4 v9, 0x1

    :try_start_4
    aget-byte v10, v12, v9

    move/from16 p1, v9

    int-to-long v9, v10

    const/16 v20, 0x10

    shl-long v9, v9, v20

    const-wide/32 v21, 0xff0000

    and-long v9, v9, v21

    or-long/2addr v4, v9

    aget-byte v9, v12, v6

    int-to-long v9, v9

    const/16 v23, 0x18

    shl-long v9, v9, v23

    or-long/2addr v4, v9

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    const-wide/16 v24, 0x8

    add-long v7, v7, v24

    invoke-virtual {v9, v7, v8}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v3, v12, v6, v11}, Ljava/io/FileInputStream;->read([BII)I

    aget-byte v7, v12, p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    int-to-long v7, v7

    and-long/2addr v7, v15

    :try_start_5
    aget-byte v9, v12, v17

    int-to-long v9, v9

    shl-long/2addr v9, v2

    and-long v9, v9, v18

    or-long/2addr v7, v9

    aget-byte v2, v12, p1

    int-to-long v9, v2

    shl-long v9, v9, v20

    and-long v9, v9, v21

    or-long/2addr v7, v9

    aget-byte v2, v12, v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    int-to-long v9, v2

    shl-long v9, v9, v23

    or-long v6, v7, v9

    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-wide v6, v7

    :goto_0
    move-wide/from16 v26, v6

    move-wide v7, v4

    move-wide/from16 v4, v26

    goto :goto_4

    :catch_2
    move-exception v0

    move-wide v7, v4

    goto :goto_1

    :catch_3
    move-exception v0

    move-wide v7, v9

    :goto_1
    move v6, v13

    goto :goto_3

    :catch_4
    move-exception v0

    move v6, v13

    goto :goto_2

    :cond_0
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-wide v4, v7

    move-wide v6, v9

    goto :goto_5

    :catch_5
    move-exception v0

    move-wide v4, v9

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    :goto_2
    const-wide/16 v7, 0x0

    :goto_3
    move v13, v6

    const-wide/16 v4, 0x0

    :goto_4
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-wide/from16 v26, v7

    move-wide v6, v4

    move-wide/from16 v4, v26

    :goto_5
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    move-wide v7, v6

    move v9, v13

    move-wide v5, v4

    goto :goto_7

    :goto_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    :cond_1
    move v9, v6

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    :goto_7
    new-instance v4, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;-><init>(JJZ)V

    return-object v4

    :catch_7
    const-string/jumbo v0, "position is not valid"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public final blacklist getVideoDataPosition(Ljava/io/File;)Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$VideoInfo;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "srcFile"
        }
    .end annotation

    :try_start_0
    const-string v0, "MotionPhoto_Data"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->getSEFDataPosition(Ljava/io/File;Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;->getOffset()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;->getLength()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    move-wide p0, v0

    :goto_0
    new-instance v2, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$VideoInfo;

    invoke-direct {v2, v0, v1, p0, p1}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$VideoInfo;-><init>(JJ)V

    return-object v2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final blacklist getXmpPosition()J
    .locals 2

    sget-wide v0, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->xmpPosition:J

    return-wide v0
.end method

.method public final blacklist saveVideo(Ljava/io/File;Ljava/io/File;)Z
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "srcFile",
            "outFile"
        }
    .end annotation

    const-string/jumbo v0, "mv data size : "

    const-string/jumbo v1, "size = "

    const-string/jumbo v2, "saveVideo"

    const-string v3, "MotionPhotoVideoUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :try_start_0
    const-string v4, "MotionPhoto_Data"

    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->getSEFDataPosition(Ljava/io/File;Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;->getOffset()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;->getLength()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 p0, 0x0

    :try_start_1
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    long-to-int p1, v6

    new-array v1, p1, [B

    invoke-virtual {v8, v1, v2, p1}, Ljava/io/FileInputStream;->read([BII)I

    move-result p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0, v1, v2, p1}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    const/4 p0, 0x1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    return p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v0, p0

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v0, p0

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v0, p0

    move-object v8, v0

    :goto_0
    move-object p0, p1

    :goto_1
    :try_start_5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v8, :cond_0

    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    :cond_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object p1, p0

    :goto_2
    move-object p0, v8

    :goto_3
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_4
    return v2
.end method

.method public final blacklist setXmpPosition(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    sput-wide p1, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->xmpPosition:J

    return-void
.end method

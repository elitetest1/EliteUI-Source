.class public Lcom/samsung/android/motionphoto/utils/HEIFParser;
.super Ljava/lang/Object;
.source "HEIFParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;,
        Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemReference;,
        Lcom/samsung/android/motionphoto/utils/HEIFParser$XMPInformation;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "HEIFParser"


# instance fields
.field blacklist locationList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mCoverImageID:I

.field blacklist mData:Ljava/io/InputStream;

.field blacklist mFileSize:J

.field blacklist mFlags:I

.field blacklist mFoundiinfChunk:I

.field blacklist mFoundilocChunk:I

.field blacklist mFoundirefChunk:I

.field blacklist mFoundpitmChunk:I

.field blacklist mOffset:J

.field blacklist mRemainChunkSize:I

.field blacklist mVersion:I

.field blacklist mXMPMetadataIDs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mXMPOffset:J

.field blacklist mXMPSize:J

.field blacklist referenceList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mXMPMetadataIDs:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->referenceList:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->locationList:Ljava/util/Vector;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mCoverImageID:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mXMPOffset:J

    iput-wide v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mXMPSize:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mVersion:I

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFlags:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    iput-wide v1, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFileSize:J

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mRemainChunkSize:I

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundiinfChunk:I

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundpitmChunk:I

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundirefChunk:I

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundilocChunk:I

    return-void
.end method

.method private blacklist byte2toUInt32([B)J
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    const/4 p0, 0x0

    aget-byte p0, p1, p0

    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x100

    :cond_0
    int-to-long v0, p0

    const/4 p0, 0x1

    aget-byte p0, p1, p0

    if-gez p0, :cond_1

    add-int/lit16 p0, p0, 0x100

    :cond_1
    int-to-long v2, p0

    const/4 p0, 0x2

    aget-byte p0, p1, p0

    if-gez p0, :cond_2

    add-int/lit16 p0, p0, 0x100

    :cond_2
    int-to-long v4, p0

    const/4 p0, 0x3

    aget-byte p0, p1, p0

    if-gez p0, :cond_3

    add-int/lit16 p0, p0, 0x100

    :cond_3
    int-to-long p0, p0

    const/16 v6, 0x18

    shl-long/2addr v0, v6

    const/16 v6, 0x10

    shl-long/2addr v2, v6

    add-long/2addr v0, v2

    const/16 v2, 0x8

    shl-long v2, v4, v2

    add-long/2addr v0, v2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private blacklist bytetoUInt16([B)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    const/4 p0, 0x0

    aget-byte p0, p1, p0

    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x100

    :cond_0
    const/4 v0, 0x1

    aget-byte p1, p1, v0

    if-gez p1, :cond_1

    add-int/lit16 p1, p1, 0x100

    :cond_1
    shl-int/lit8 p0, p0, 0x8

    add-int/2addr p0, p1

    return p0
.end method

.method private blacklist parseFullBoxHeader()I
    .locals 7

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, -0x1

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, v0, :cond_0

    return v2

    :cond_0
    iget-wide v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    const-wide/16 v5, 0x4

    add-long/2addr v2, v5

    iput-wide v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    invoke-direct {p0, v1}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v0

    long-to-int v0, v0

    shr-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mVersion:I

    return v4

    :catch_0
    return v2
.end method

.method private blacklist parseIinfBox()I
    .locals 19

    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->parseFullBoxHeader()I

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget v1, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mRemainChunkSize:I

    const/4 v3, 0x4

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mRemainChunkSize:I

    new-array v1, v3, [B

    iget v4, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mVersion:I

    const/4 v5, 0x2

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    :try_start_0
    iget-object v6, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    if-eq v6, v4, :cond_2

    return v2

    :cond_2
    iget-wide v8, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    int-to-long v10, v4

    add-long/2addr v8, v10

    iput-wide v8, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    iget v6, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mRemainChunkSize:I

    sub-int/2addr v6, v4

    iput v6, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mRemainChunkSize:I

    if-ne v4, v5, :cond_3

    invoke-direct {v0, v1}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->bytetoUInt16([B)I

    move-result v4

    goto :goto_1

    :cond_3
    invoke-direct {v0, v1}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v8

    long-to-int v4, v8

    :goto_1
    move v6, v7

    :goto_2
    const-string v8, "HEIFParser"

    if-ge v6, v4, :cond_e

    :try_start_1
    iget-object v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v9, v1, v7, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    if-eq v9, v3, :cond_4

    return v2

    :cond_4
    invoke-direct {v0, v1}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v9

    iget-wide v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    const-wide/16 v13, 0x4

    add-long/2addr v11, v13

    iput-wide v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    iget v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mRemainChunkSize:I

    int-to-long v11, v11

    sub-long/2addr v11, v9

    long-to-int v11, v11

    iput v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mRemainChunkSize:I

    :try_start_2
    iget-object v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v11, v1, v7, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    if-eq v11, v3, :cond_5

    return v2

    :cond_5
    iget-wide v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v11, v13

    iput-wide v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    const-wide/16 v11, 0x8

    sub-long v11, v9, v11

    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v1}, Ljava/lang/String;-><init>([B)V

    move/from16 v16, v2

    const-string v2, "infe"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v15, "Exception: "

    if-nez v2, :cond_6

    iget-wide v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v9, v11

    iput-wide v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    :try_start_3
    iget-object v2, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v2, v11, v12}, Ljava/io/InputStream;->skip(J)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v16

    :cond_6
    invoke-direct {v0}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->parseFullBoxHeader()I

    move-result v2

    if-eqz v2, :cond_7

    return v16

    :cond_7
    const-wide/16 v11, 0xc

    sub-long/2addr v9, v11

    iget v2, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mVersion:I

    if-ge v2, v5, :cond_8

    return v16

    :cond_8
    if-ne v2, v5, :cond_9

    move v2, v5

    goto :goto_3

    :cond_9
    move v2, v3

    :goto_3
    :try_start_4
    iget-object v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v11, v1, v7, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-eq v11, v2, :cond_a

    return v16

    :cond_a
    iget-wide v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    move-wide/from16 v17, v13

    int-to-long v13, v2

    add-long/2addr v11, v13

    iput-wide v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    sub-long/2addr v9, v13

    if-ne v2, v5, :cond_b

    invoke-direct {v0, v1}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->bytetoUInt16([B)I

    move-result v2

    goto :goto_4

    :cond_b
    invoke-direct {v0, v1}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v11

    long-to-int v2, v11

    :goto_4
    iget-wide v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    const-wide/16 v13, 0x2

    add-long/2addr v11, v13

    iput-wide v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    :try_start_5
    iget-object v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v11, v13, v14}, Ljava/io/InputStream;->skip(J)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :try_start_6
    iget-object v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v11, v1, v7, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v11
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    if-eq v11, v3, :cond_c

    return v16

    :cond_c
    iget-wide v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long v11, v11, v17

    iput-wide v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    const-wide/16 v11, 0x6

    sub-long/2addr v9, v11

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v1}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v12, "mime"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    iget-object v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mXMPMetadataIDs:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-wide v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v11, v9

    iput-wide v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    goto :goto_5

    :cond_d
    iget-wide v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v11, v9

    iput-wide v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    :goto_5
    :try_start_7
    iget-object v2, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v2, v9, v10}, Ljava/io/InputStream;->skip(J)J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :goto_6
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v16

    goto/16 :goto_2

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_2
    return v16

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_4
    return v16

    :catch_5
    move/from16 v16, v2

    return v16

    :catch_6
    move/from16 v16, v2

    return v16

    :cond_e
    const/4 v1, 0x1

    iput v1, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundiinfChunk:I

    const-string v0, "Found iinf Chunk"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :catch_7
    move/from16 v16, v2

    return v16
.end method

.method private blacklist parseIlocBox()I
    .locals 25

    move-object/from16 v0, p0

    const/4 v1, 0x4

    new-array v2, v1, [B

    invoke-direct {v0}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->parseFullBoxHeader()I

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    return v4

    :cond_0
    iget v3, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mVersion:I

    const/4 v5, 0x2

    if-le v3, v5, :cond_1

    return v4

    :cond_1
    :try_start_0
    iget-object v3, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v2, v7, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    aget-byte v8, v2, v7

    if-eq v3, v6, :cond_2

    return v4

    :cond_2
    iget-wide v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    and-int/lit8 v3, v8, 0xf

    shr-int/2addr v8, v1

    :try_start_1
    iget-object v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v9, v2, v7, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    aget-byte v10, v2, v7

    if-eq v9, v6, :cond_3

    return v4

    :cond_3
    iget-wide v13, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v13, v11

    iput-wide v13, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    iget v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mVersion:I

    if-eqz v9, :cond_5

    if-ne v9, v6, :cond_4

    goto :goto_0

    :cond_4
    move v11, v7

    goto :goto_1

    :cond_5
    :goto_0
    and-int/lit8 v11, v10, 0xf

    :goto_1
    shr-int/2addr v10, v1

    if-ge v9, v5, :cond_6

    move v1, v5

    :cond_6
    :try_start_2
    iget-object v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v9, v2, v7, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    if-eq v9, v1, :cond_7

    return v4

    :cond_7
    iget-wide v12, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    int-to-long v14, v1

    add-long/2addr v12, v14

    iput-wide v12, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    if-ne v1, v5, :cond_8

    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->bytetoUInt16([B)I

    move-result v9

    goto :goto_2

    :cond_8
    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v12

    long-to-int v9, v12

    :goto_2
    const-wide/16 v12, 0x0

    move/from16 v16, v4

    move v4, v7

    :goto_3
    const-string v6, "HEIFParser"

    if-ge v4, v9, :cond_15

    :try_start_3
    iget-object v5, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v5, v2, v7, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    if-eq v5, v1, :cond_9

    return v16

    :cond_9
    move/from16 v17, v8

    iget-wide v7, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v7, v14

    iput-wide v7, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    const/4 v7, 0x2

    if-ne v1, v7, :cond_a

    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->bytetoUInt16([B)I

    move-result v8

    move/from16 v24, v8

    move-object v8, v6

    move/from16 v6, v24

    goto :goto_4

    :cond_a
    move-object v8, v6

    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v5

    long-to-int v5, v5

    move v6, v5

    :goto_4
    iget v5, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mVersion:I

    const-string v7, "Exception: "

    move-object/from16 v19, v8

    move/from16 v18, v9

    const/4 v8, 0x1

    const-wide/16 v20, 0x2

    if-eq v5, v8, :cond_b

    const/4 v8, 0x2

    if-ne v5, v8, :cond_c

    :cond_b
    iget-wide v8, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long v8, v8, v20

    iput-wide v8, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    :try_start_4
    iget-object v5, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    move-wide/from16 v8, v20

    invoke-virtual {v5, v8, v9}, Ljava/io/InputStream;->skip(J)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-wide/from16 v20, v8

    :cond_c
    iget-wide v8, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long v8, v8, v20

    iput-wide v8, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    :try_start_5
    iget-object v5, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    move-wide/from16 v8, v20

    invoke-virtual {v5, v8, v9}, Ljava/io/InputStream;->skip(J)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    if-lez v10, :cond_f

    :try_start_6
    iget-object v5, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v7, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const/4 v7, 0x2

    if-ne v1, v7, :cond_d

    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->bytetoUInt16([B)I

    move-result v7

    int-to-long v12, v7

    goto :goto_5

    :cond_d
    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v12

    :goto_5
    if-eq v8, v10, :cond_e

    return v16

    :cond_e
    iget-wide v7, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    move v9, v6

    int-to-long v5, v10

    add-long/2addr v7, v5

    iput-wide v7, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    goto :goto_6

    :catch_0
    return v16

    :cond_f
    move v9, v6

    :goto_6
    :try_start_7
    iget-object v5, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v5, v2, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v8
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->bytetoUInt16([B)I

    move-result v6

    if-eq v8, v7, :cond_10

    return v16

    :cond_10
    iget-wide v7, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    const-wide/16 v20, 0x2

    add-long v7, v7, v20

    iput-wide v7, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    const/4 v8, 0x1

    if-eq v6, v8, :cond_11

    return v16

    :cond_11
    :try_start_8
    iget-object v6, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-virtual {v6, v2, v5, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    if-eq v6, v11, :cond_12

    return v16

    :cond_12
    iget-wide v6, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    move-wide/from16 v19, v6

    int-to-long v5, v11

    add-long v6, v19, v5

    iput-wide v6, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    :try_start_9
    iget-object v5, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    move/from16 v6, v17

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v7, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v8
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move/from16 v17, v4

    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v4

    if-eq v8, v6, :cond_13

    return v16

    :cond_13
    iget-wide v7, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    move-wide/from16 v19, v7

    int-to-long v7, v6

    add-long v7, v19, v7

    iput-wide v7, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    :try_start_a
    iget-object v7, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v7
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    move/from16 v19, v9

    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v8

    if-eq v7, v3, :cond_14

    return v16

    :cond_14
    move/from16 v21, v1

    move-object/from16 v20, v2

    iget-wide v1, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    move-wide/from16 v22, v1

    int-to-long v1, v3

    add-long v1, v22, v1

    iput-wide v1, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    new-instance v1, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;

    invoke-direct {v1, v0}, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;-><init>(Lcom/samsung/android/motionphoto/utils/HEIFParser;)V

    iput-wide v12, v1, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;->base_offset:J

    move/from16 v22, v3

    move/from16 v2, v19

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;->itemID:J

    iput-wide v4, v1, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;->offset:J

    iput-wide v8, v1, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;->length:J

    iget-object v2, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->locationList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v17, 0x1

    move v8, v6

    move/from16 v9, v18

    move-object/from16 v2, v20

    move/from16 v1, v21

    move/from16 v3, v22

    const/4 v5, 0x2

    const/4 v7, 0x0

    goto/16 :goto_3

    :catch_1
    return v16

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, v19

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v16

    :catch_3
    move-exception v0

    move-object/from16 v8, v19

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_4
    return v16

    :cond_15
    move-object v8, v6

    const/4 v1, 0x1

    iput v1, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundilocChunk:I

    const-string v0, "Found iloc Chunk"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return v5

    :catch_5
    move/from16 v16, v4

    return v16

    :catch_6
    move/from16 v16, v4

    return v16

    :catch_7
    move/from16 v16, v4

    return v16
.end method

.method private blacklist parseIrefBox(J)I
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chunk_size"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x4

    new-array v2, v1, [B

    invoke-direct {v0}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->parseFullBoxHeader()I

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    return v4

    :cond_0
    const-wide/16 v5, 0x4

    sub-long v7, p1, v5

    iget v3, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mVersion:I

    const/4 v9, 0x2

    if-nez v3, :cond_1

    move v3, v9

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    const-wide/16 v10, 0x0

    cmp-long v10, v7, v10

    const-string v11, "HEIFParser"

    const/4 v12, 0x0

    if-lez v10, :cond_a

    :try_start_0
    iget-object v10, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v10, v2, v12, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eq v10, v1, :cond_2

    return v4

    :cond_2
    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v13

    move v15, v4

    move-wide/from16 v16, v5

    iget-wide v4, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long v4, v4, v16

    iput-wide v4, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    :try_start_1
    iget-object v4, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v4, v2, v12, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eq v4, v1, :cond_3

    return v15

    :cond_3
    iget-wide v4, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long v4, v4, v16

    iput-wide v4, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    const-wide/16 v4, 0x8

    sub-long/2addr v7, v4

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    const-string v10, "cdsc"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    :try_start_2
    iget-object v4, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v4, v2, v12, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eq v4, v3, :cond_4

    return v15

    :cond_4
    iget-wide v4, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    int-to-long v10, v3

    add-long/2addr v4, v10

    iput-wide v4, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    sub-long/2addr v7, v10

    if-ne v3, v9, :cond_5

    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->bytetoUInt16([B)I

    move-result v4

    goto :goto_1

    :cond_5
    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v4

    long-to-int v4, v4

    :goto_1
    iget-wide v5, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    const-wide/16 v13, 0x2

    add-long/2addr v5, v13

    iput-wide v5, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    sub-long/2addr v7, v13

    :try_start_3
    iget-object v5, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v5, v2, v12, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eq v5, v9, :cond_6

    return v15

    :cond_6
    :try_start_4
    iget-object v5, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v5, v2, v12, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-eq v5, v3, :cond_7

    return v15

    :cond_7
    iget-wide v5, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v5, v10

    iput-wide v5, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    sub-long/2addr v7, v10

    if-ne v3, v9, :cond_8

    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->bytetoUInt16([B)I

    move-result v5

    goto :goto_2

    :cond_8
    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v5

    long-to-int v5, v5

    :goto_2
    new-instance v6, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemReference;

    invoke-direct {v6, v0}, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemReference;-><init>(Lcom/samsung/android/motionphoto/utils/HEIFParser;)V

    iput v4, v6, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemReference;->itemID:I

    iget-object v4, v6, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemReference;->referenceItems:Ljava/util/Vector;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->referenceList:Ljava/util/Vector;

    invoke-virtual {v4, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object/from16 v18, v2

    goto :goto_3

    :catch_0
    return v15

    :cond_9
    move-object/from16 v18, v2

    iget-wide v1, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    sub-long/2addr v13, v4

    add-long/2addr v1, v13

    iput-wide v1, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    sub-long/2addr v7, v13

    :try_start_5
    iget-object v1, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v1, v13, v14}, Ljava/io/InputStream;->skip(J)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_3
    move v4, v15

    move-wide/from16 v5, v16

    move-object/from16 v2, v18

    const/4 v1, 0x4

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_2
    return v15

    :catch_3
    move v15, v4

    return v15

    :cond_a
    move v15, v4

    if-gez v10, :cond_b

    return v15

    :cond_b
    const/4 v1, 0x1

    iput v1, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundirefChunk:I

    const-string v0, "Found iref Chunk"

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v12
.end method

.method private blacklist parsePitmBox()I
    .locals 8

    const/4 v0, 0x4

    new-array v1, v0, [B

    invoke-direct {p0}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->parseFullBoxHeader()I

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    return v3

    :cond_0
    iget v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mRemainChunkSize:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mRemainChunkSize:I

    iget v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mVersion:I

    const/4 v4, 0x2

    if-nez v2, :cond_1

    move v0, v4

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v2, v0, :cond_2

    return v3

    :cond_2
    iget-wide v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    int-to-long v6, v0

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    iget v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mRemainChunkSize:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mRemainChunkSize:I

    if-ne v0, v4, :cond_3

    invoke-direct {p0, v1}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->bytetoUInt16([B)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mCoverImageID:I

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mCoverImageID:I

    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundpitmChunk:I

    return v5

    :catch_0
    return v3
.end method


# virtual methods
.method public blacklist getCoverImageXMPOffsetAndSize(Ljava/io/InputStream;)Lcom/samsung/android/motionphoto/utils/HEIFParser$XMPInformation;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    const-string v1, "HEIFParser"

    iput-object p1, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    const/4 p1, 0x4

    new-array v0, p1, [B

    :goto_0
    iget v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundiinfChunk:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v4, :cond_5

    iget v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundpitmChunk:I

    if-ne v2, v4, :cond_5

    iget v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundirefChunk:I

    if-ne v2, v4, :cond_5

    iget v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundilocChunk:I

    if-eq v2, v4, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mXMPMetadataIDs:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-nez p1, :cond_1

    return-object v5

    :cond_1
    move p1, v3

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->referenceList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->referenceList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemReference;

    iget-object v1, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemReference;->referenceItems:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v0, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemReference;->itemID:I

    iget v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mCoverImageID:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mXMPMetadataIDs:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->locationList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->locationList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;

    iget-wide v6, v2, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;->itemID:J

    int-to-long v8, v0

    cmp-long v4, v6, v8

    if-nez v4, :cond_2

    new-instance v6, Lcom/samsung/android/motionphoto/utils/HEIFParser$XMPInformation;

    iget-wide v0, v2, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;->base_offset:J

    iget-wide v3, v2, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;->offset:J

    add-long v8, v0, v3

    iget-wide v10, v2, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;->length:J

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/motionphoto/utils/HEIFParser$XMPInformation;-><init>(Lcom/samsung/android/motionphoto/utils/HEIFParser;JJ)V

    return-object v6

    :cond_2
    move-object v7, p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move-object v7, p0

    add-int/lit8 p1, p1, 0x1

    move-object p0, v7

    goto :goto_1

    :cond_4
    return-object v5

    :cond_5
    :goto_3
    move-object v7, p0

    :try_start_0
    iget-object p0, v7, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {p0, v0, v3, p1}, Ljava/io/InputStream;->read([BII)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eq p0, p1, :cond_6

    return-object v5

    :cond_6
    iget-wide v8, v7, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    const-wide/16 v10, 0x4

    add-long/2addr v8, v10

    iput-wide v8, v7, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    invoke-direct {v7, v0}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v8

    :try_start_1
    iget-object p0, v7, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {p0, v0, v3, p1}, Ljava/io/InputStream;->read([BII)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eq p0, p1, :cond_7

    return-object v5

    :cond_7
    iget-wide v2, v7, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v2, v10

    iput-wide v2, v7, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    const-wide/16 v2, 0x8

    sub-long/2addr v8, v2

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    const-string v2, "iinf"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {v7}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->parseIinfBox()I

    :goto_4
    move-object p0, v7

    goto/16 :goto_0

    :cond_8
    const-string v2, "iref"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-direct {v7, v8, v9}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->parseIrefBox(J)I

    goto :goto_4

    :cond_9
    const-string/jumbo v2, "pitm"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-direct {v7}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->parsePitmBox()I

    goto :goto_4

    :cond_a
    const-string v2, "iloc"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-direct {v7}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->parseIlocBox()I

    goto :goto_4

    :cond_b
    const-string/jumbo v2, "meta"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v2, "Exception: "

    if-eqz p0, :cond_c

    iget-wide v3, v7, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v3, v10

    iput-wide v3, v7, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    :try_start_2
    iget-object p0, v7, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {p0, v10, v11}, Ljava/io/InputStream;->skip(J)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_c
    :try_start_3
    iget-object p0, v7, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {p0, v8, v9}, Ljava/io/InputStream;->skip(J)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    iget-wide v2, v7, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v2, v8

    iput-wide v2, v7, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    goto :goto_4

    :catch_1
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :catch_2
    const-string/jumbo p0, "read fail"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :catch_3
    return-object v5
.end method

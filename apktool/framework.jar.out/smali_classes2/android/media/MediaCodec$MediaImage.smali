.class public Landroid/media/MediaCodec$MediaImage;
.super Landroid/media/Image;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodec$MediaImage$MediaPlane;
    }
.end annotation


# static fields
.field private static final greylist-max-o TYPE_YUV:I = 0x1


# instance fields
.field private final greylist-max-o mBuffer:Ljava/nio/ByteBuffer;

.field private final blacklist mBufferContext:J

.field private final greylist-max-o mFormat:I

.field private final greylist-max-o mHeight:I

.field private final greylist-max-o mInfo:Ljava/nio/ByteBuffer;

.field private final greylist-max-o mIsReadOnly:Z

.field private final greylist-max-o mPlanes:[Landroid/media/Image$Plane;

.field private final greylist-max-o mScalingMode:I

.field private greylist-max-o mTimestamp:J

.field private final greylist-max-o mTransform:I

.field private final greylist-max-o mWidth:I

.field private final greylist-max-o mXOffset:I

.field private final greylist-max-o mYOffset:I


# direct methods
.method public constructor greylist-max-o <init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ZJIILandroid/graphics/Rect;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-direct {v0}, Landroid/media/Image;-><init>()V

    const/4 v4, 0x0

    iput v4, v0, Landroid/media/MediaCodec$MediaImage;->mTransform:I

    iput v4, v0, Landroid/media/MediaCodec$MediaImage;->mScalingMode:I

    move-wide/from16 v5, p4

    iput-wide v5, v0, Landroid/media/MediaCodec$MediaImage;->mTimestamp:J

    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/media/MediaCodec$MediaImage;->mIsImageValid:Z

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v6

    iput-boolean v6, v0, Landroid/media/MediaCodec$MediaImage;->mIsReadOnly:Z

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, v0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    iput v2, v0, Landroid/media/MediaCodec$MediaImage;->mXOffset:I

    iput v3, v0, Landroid/media/MediaCodec$MediaImage;->mYOffset:I

    move-object/from16 v6, p2

    iput-object v6, v0, Landroid/media/MediaCodec$MediaImage;->mInfo:Ljava/nio/ByteBuffer;

    const-wide/16 v7, 0x0

    iput-wide v7, v0, Landroid/media/MediaCodec$MediaImage;->mBufferContext:J

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    const/16 v8, 0x68

    if-ne v7, v8, :cond_16

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    if-ne v7, v5, :cond_15

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_14

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    iput v8, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    iput v9, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    const-string v10, "x"

    if-lt v8, v5, :cond_13

    if-lt v9, v5, :cond_13

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    const/16 v9, 0xa

    const/16 v11, 0x8

    if-eq v8, v11, :cond_1

    if-ne v8, v9, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsupported bit depth: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    const/16 v13, 0x10

    if-eq v12, v11, :cond_3

    if-ne v12, v13, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsupported allocated bit depth: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    const/16 v14, 0x23

    const/16 v15, 0x36

    if-ne v8, v11, :cond_4

    if-ne v12, v11, :cond_4

    iput v14, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    move v12, v5

    const/4 v9, 0x2

    goto :goto_2

    :cond_4
    if-ne v8, v9, :cond_12

    if-ne v12, v13, :cond_12

    iput v15, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    const/4 v9, 0x4

    const/4 v12, 0x2

    :goto_2
    new-array v13, v7, [Landroid/media/MediaCodec$MediaImage$MediaPlane;

    iput-object v13, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    const/4 v13, -0x1

    move/from16 v16, v13

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v7, :cond_c

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v17

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    if-ne v11, v5, :cond_b

    if-nez v4, :cond_5

    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    const/4 v6, 0x2

    :goto_4
    if-ne v11, v6, :cond_b

    const/4 v6, 0x1

    if-lt v15, v6, :cond_a

    if-lt v14, v6, :cond_a

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v6, v0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int v6, v6, v17

    div-int v20, v2, v11

    mul-int v20, v20, v15

    add-int v6, v6, v20

    div-int v20, v3, v5

    mul-int v20, v20, v14

    add-int v6, v6, v20

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    move/from16 v20, v6

    const/16 v6, 0x8

    invoke-static {v8, v6}, Landroid/media/Utils;->divUp(II)I

    move-result v18

    add-int v18, v20, v18

    iget v6, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    div-int/2addr v6, v5

    const/16 v19, 0x1

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v6, v14

    add-int v18, v18, v6

    iget v5, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    div-int/2addr v5, v11

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v5, v15

    add-int v5, v18, v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v5, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    new-instance v6, Landroid/media/MediaCodec$MediaImage$MediaPlane;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-direct {v6, v0, v11, v14, v15}, Landroid/media/MediaCodec$MediaImage$MediaPlane;-><init>(Landroid/media/MediaCodec$MediaImage;Ljava/nio/ByteBuffer;II)V

    aput-object v6, v5, v4

    iget v5, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    const/16 v6, 0x23

    const/16 v11, 0x36

    const/16 v14, 0x3c

    if-eq v5, v6, :cond_6

    if-eq v5, v11, :cond_6

    if-ne v5, v14, :cond_7

    :cond_6
    const/4 v15, 0x1

    if-ne v4, v15, :cond_7

    move/from16 v13, v17

    goto :goto_5

    :cond_7
    if-eq v5, v6, :cond_8

    if-eq v5, v11, :cond_8

    if-ne v5, v14, :cond_9

    :cond_8
    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    move/from16 v16, v17

    :cond_9
    :goto_5
    add-int/lit8 v4, v4, 0x1

    move v14, v6

    const/4 v5, 0x1

    const/16 v11, 0x8

    move-object/from16 v6, p2

    goto/16 :goto_3

    :cond_a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected strides: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pixel, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " row on plane "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected subsampling: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " on plane "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget v1, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    const/16 v11, 0x36

    if-eq v1, v11, :cond_d

    const/16 v14, 0x3c

    if-ne v1, v14, :cond_e

    :cond_d
    add-int/2addr v12, v13

    move/from16 v1, v16

    if-ne v1, v12, :cond_11

    iget-object v1, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    const/16 v19, 0x1

    aget-object v1, v1, v19

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v1

    if-ne v1, v9, :cond_10

    iget-object v1, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    const/4 v5, 0x2

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v1

    if-ne v1, v9, :cond_10

    :cond_e
    if-nez p8, :cond_f

    new-instance v1, Landroid/graphics/Rect;

    iget v4, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    iget v5, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    const/4 v6, 0x0

    invoke-direct {v1, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_6

    :cond_f
    move-object/from16 v1, p8

    :goto_6
    neg-int v2, v2

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    invoke-super {v0, v1}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    return-void

    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Invalid pixelStride"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid plane offsets cbPlaneOffset: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " crPlaneOffset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "couldn\'t infer ImageFormat bitDepth: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bitDepthAllocated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsupported size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected number of planes: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsupported type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsupported info length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>([Ljava/nio/ByteBuffer;[I[IIIIZJIILandroid/graphics/Rect;J)V
    .locals 10

    move/from16 v1, p10

    move/from16 v2, p11

    invoke-direct {p0}, Landroid/media/Image;-><init>()V

    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaCodec$MediaImage;->mTransform:I

    iput v3, p0, Landroid/media/MediaCodec$MediaImage;->mScalingMode:I

    array-length v4, p1

    array-length v5, p2

    if-ne v4, v5, :cond_2

    array-length v4, p1

    array-length v5, p3

    if-ne v4, v5, :cond_2

    iput p4, p0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    iput p5, p0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    move/from16 v4, p6

    iput v4, p0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    move-wide/from16 v4, p8

    iput-wide v4, p0, Landroid/media/MediaCodec$MediaImage;->mTimestamp:J

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/media/MediaCodec$MediaImage;->mIsImageValid:Z

    move/from16 v4, p7

    iput-boolean v4, p0, Landroid/media/MediaCodec$MediaImage;->mIsReadOnly:Z

    const/4 v4, 0x0

    iput-object v4, p0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    iput-object v4, p0, Landroid/media/MediaCodec$MediaImage;->mInfo:Ljava/nio/ByteBuffer;

    array-length v4, p1

    new-array v4, v4, [Landroid/media/MediaCodec$MediaImage$MediaPlane;

    iput-object v4, p0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    move v4, v3

    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    new-instance v6, Landroid/media/MediaCodec$MediaImage$MediaPlane;

    aget-object v7, p1, v4

    aget v8, p2, v4

    aget v9, p3, v4

    invoke-direct {v6, p0, v7, v8, v9}, Landroid/media/MediaCodec$MediaImage$MediaPlane;-><init>(Landroid/media/MediaCodec$MediaImage;Ljava/nio/ByteBuffer;II)V

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Landroid/media/MediaCodec$MediaImage;->mXOffset:I

    iput v2, p0, Landroid/media/MediaCodec$MediaImage;->mYOffset:I

    if-nez p12, :cond_1

    new-instance p1, Landroid/graphics/Rect;

    iget p2, p0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    invoke-direct {p1, v3, v3, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    :cond_1
    move-object/from16 p1, p12

    :goto_1
    neg-int p2, v1

    neg-int v0, v2

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->offset(II)V

    invoke-super {p0, p1}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    move-wide/from16 p1, p13

    iput-wide p1, p0, Landroid/media/MediaCodec$MediaImage;->mBufferContext:J

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "buffers, rowStrides and pixelStrides should have the same length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 4

    iget-boolean v0, p0, Landroid/media/MediaCodec$MediaImage;->mIsImageValid:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    :cond_0
    iget-wide v0, p0, Landroid/media/MediaCodec$MediaImage;->mBufferContext:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1}, Landroid/media/MediaCodec;->-$$Nest$smnative_closeMediaImage(J)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaCodec$MediaImage;->mIsImageValid:Z

    :cond_2
    return-void
.end method

.method public whitelist getFormat()I
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    iget p0, p0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    return p0
.end method

.method public whitelist getHeight()I
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    iget p0, p0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    return p0
.end method

.method public whitelist getPlanes()[Landroid/media/Image$Plane;
    .locals 1

    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    iget-object p0, p0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/media/Image$Plane;

    return-object p0
.end method

.method public greylist-max-o getScalingMode()I
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getTimestamp()J
    .locals 2

    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    iget-wide v0, p0, Landroid/media/MediaCodec$MediaImage;->mTimestamp:J

    return-wide v0
.end method

.method public greylist-max-o getTransform()I
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getWidth()I
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    iget p0, p0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    return p0
.end method

.method public whitelist setCropRect(Landroid/graphics/Rect;)V
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaCodec$MediaImage;->mIsReadOnly:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    return-void

    :cond_0
    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

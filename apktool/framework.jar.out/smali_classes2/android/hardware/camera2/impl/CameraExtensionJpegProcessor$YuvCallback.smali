.class Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;
.super Ljava/lang/Object;
.source "CameraExtensionJpegProcessor.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "YuvCallback"
.end annotation


# instance fields
.field private blacklist mImageReader:Landroid/media/ImageReader;

.field private blacklist mImageWriter:Landroid/media/ImageWriter;

.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;Landroid/media/ImageReader;Landroid/media/ImageWriter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;->mImageReader:Landroid/media/ImageReader;

    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;->mImageWriter:Landroid/media/ImageWriter;

    return-void
.end method


# virtual methods
.method public whitelist onImageAvailable(Landroid/media/ImageReader;)V
    .locals 26

    move-object/from16 v0, p0

    const-string v1, "CameraExtensionJpeg"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, v0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v4, v0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;->mImageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v4}, Landroid/media/ImageWriter;->dequeueInputImage()Landroid/media/Image;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v4}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v4}, Landroid/media/Image;->getWidth()I

    move-result v19

    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    aget-object v5, v5, v6

    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v8, v8, v9

    new-instance v9, Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v10, v0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

    invoke-static {v10}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->-$$Nest$fgetmJpegParameters(Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;

    iget-object v12, v11, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;->mTimeStamps:Ljava/util/HashSet;

    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    move-object v11, v2

    :goto_0
    if-nez v11, :cond_3

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v9, "Empty jpeg settings queue! Using default jpeg orientation and quality!"

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;

    invoke-direct {v11, v2}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;-><init>(Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor-IA;)V

    iput v6, v11, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;->mRotation:I

    const/16 v2, 0x64

    iput v2, v11, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;->mQuality:I

    goto :goto_1

    :cond_2
    const-string v2, "No jpeg settings found with matching timestamp for current processed input!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Using values from the top of the queue!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;

    :cond_3
    :goto_1
    move-object v2, v7

    invoke-virtual {v3}, Landroid/media/Image;->getWidth()I

    move-result v7

    move-object v6, v8

    invoke-virtual {v3}, Landroid/media/Image;->getHeight()I

    move-result v8

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v10

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v13

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v14

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v16

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v17

    iget v2, v11, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;->mQuality:I

    invoke-virtual {v3}, Landroid/media/Image;->getWidth()I

    move-result v23

    invoke-virtual {v3}, Landroid/media/Image;->getHeight()I

    move-result v24

    iget v6, v11, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;->mRotation:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v20, v2

    move v11, v5

    move/from16 v25, v6

    invoke-static/range {v7 .. v25}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->-$$Nest$smcompressJpegFromYUV420pNative(IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIIIII)I

    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/media/Image;->setTimestamp(J)V

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    :try_start_2
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;->mImageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v0, v4}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v4}, Landroid/media/Image;->close()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    :try_start_3
    const-string v0, "Failed to queue encoded result!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v4}, Landroid/media/Image;->close()V

    return-void

    :goto_2
    invoke-virtual {v4}, Landroid/media/Image;->close()V

    throw v0

    :catch_1
    move-object v2, v3

    :catch_2
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/media/Image;->close()V

    :cond_4
    const-string v0, "Failed to acquire processed yuv image or jpeg image!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

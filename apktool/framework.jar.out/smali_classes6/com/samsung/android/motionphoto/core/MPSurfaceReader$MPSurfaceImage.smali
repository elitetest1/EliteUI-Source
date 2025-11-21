.class public Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;
.super Ljava/lang/Object;
.source "MPSurfaceReader.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/motionphoto/core/MPSurfaceReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MPSurfaceImage"
.end annotation


# instance fields
.field private final blacklist TAG:Ljava/lang/String;

.field private blacklist buffer:Landroid/hardware/HardwareBuffer;

.field private blacklist dataSpace:I

.field private blacklist fd:I

.field private final blacklist format:I

.field private final blacklist isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist nativeBufferItemContext:J

.field private blacklist stride:I

.field final synthetic blacklist this$0:Lcom/samsung/android/motionphoto/core/MPSurfaceReader;

.field private blacklist timestamp:J


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/motionphoto/core/MPSurfaceReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->this$0:Lcom/samsung/android/motionphoto/core/MPSurfaceReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p1}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->access$000(Lcom/samsung/android/motionphoto/core/MPSurfaceReader;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->format:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/motionphoto/core/MPSurfaceReader;Landroid/hardware/HardwareBuffer;IJII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->this$0:Lcom/samsung/android/motionphoto/core/MPSurfaceReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->buffer:Landroid/hardware/HardwareBuffer;

    iput p3, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->stride:I

    iput-wide p4, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->timestamp:J

    iput p6, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->dataSpace:I

    iput p7, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->fd:I

    invoke-static {p1}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->access$000(Lcom/samsung/android/motionphoto/core/MPSurfaceReader;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->format:I

    return-void
.end method

.method private blacklist bufferToString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->buffer:Landroid/hardware/HardwareBuffer;

    if-nez v0, :cond_0

    const-string/jumbo p0, "n/a"

    return-object p0

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    const-class v0, Landroid/hardware/HardwareBuffer;

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->getStride()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->getScanline()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object p0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "HardwareBuffer@%d[#0x%s: [w=%d, h=%d], stride=%d, scanline=%d fmt=%d]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->buffer:Landroid/hardware/HardwareBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->this$0:Lcom/samsung/android/motionphoto/core/MPSurfaceReader;

    invoke-virtual {v0, p0}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->releaseBuffer(Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;)V

    iget-object p0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->close()V

    :cond_0
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public blacklist getDataSpace()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->dataSpace:I

    return p0
.end method

.method public blacklist getFd()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->fd:I

    return p0
.end method

.method public blacklist getFence()Landroid/hardware/SyncFence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported yet!"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getFormat()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->format:I

    return p0
.end method

.method public blacklist getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->buffer:Landroid/hardware/HardwareBuffer;

    return-object p0
.end method

.method public blacklist getHeight()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->format:I

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1005

    if-eq v0, v1, :cond_0

    const v1, 0x48454946

    if-eq v0, v1, :cond_0

    const v1, 0x69656963

    if-eq v0, v1, :cond_0

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    const/16 v1, 0x101

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->this$0:Lcom/samsung/android/motionphoto/core/MPSurfaceReader;

    invoke-static {p0}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->access$200(Lcom/samsung/android/motionphoto/core/MPSurfaceReader;)I

    move-result p0

    return p0
.end method

.method blacklist getOwner()Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;
    .locals 0

    return-object p0
.end method

.method public blacklist getPlanes()[Landroid/media/Image$Plane;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported yet!"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getScanline()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result p0

    return p0
.end method

.method public blacklist getStride()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->stride:I

    return p0
.end method

.method public blacklist getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->timestamp:J

    return-wide v0
.end method

.method public blacklist getWidth()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->format:I

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1005

    if-eq v0, v1, :cond_0

    const v1, 0x48454946

    if-eq v0, v1, :cond_0

    const v1, 0x69656963

    if-eq v0, v1, :cond_0

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    const/16 v1, 0x101

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->this$0:Lcom/samsung/android/motionphoto/core/MPSurfaceReader;

    invoke-static {p0}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->access$100(Lcom/samsung/android/motionphoto/core/MPSurfaceReader;)I

    move-result p0

    return p0
.end method

.method public blacklist setDataSpace(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->dataSpace:I

    return-void
.end method

.method public blacklist setFd(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->fd:I

    return-void
.end method

.method public blacklist setFence(Landroid/hardware/SyncFence;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->timestamp:J

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MPSurfaceImage=: context="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->nativeBufferItemContext:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ": buffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->bufferToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ": dataSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->dataSpace:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->format:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": fd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;->fd:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

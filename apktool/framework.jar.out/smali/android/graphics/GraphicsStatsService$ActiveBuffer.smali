.class final Landroid/graphics/GraphicsStatsService$ActiveBuffer;
.super Ljava/lang/Object;
.source "GraphicsStatsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/GraphicsStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActiveBuffer"
.end annotation


# instance fields
.field final blacklist mCallback:Landroid/view/IGraphicsStatsCallback;

.field final blacklist mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

.field blacklist mMapping:Ljava/nio/ByteBuffer;

.field final blacklist mPid:I

.field blacklist mProcessBuffer:Landroid/os/SharedMemory;

.field final blacklist mToken:Landroid/os/IBinder;

.field final blacklist mUid:I

.field final synthetic blacklist this$0:Landroid/graphics/GraphicsStatsService;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/GraphicsStatsService;Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "GFXStats-"

    iput-object p1, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->this$0:Landroid/graphics/GraphicsStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/graphics/GraphicsStatsService$BufferInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v2, p1

    move v3, p3

    move-object v4, p5

    move-wide v5, p6

    invoke-direct/range {v1 .. v8}, Landroid/graphics/GraphicsStatsService$BufferInfo;-><init>(Landroid/graphics/GraphicsStatsService;ILjava/lang/String;JJ)V

    iput-object v1, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mInfo:Landroid/graphics/GraphicsStatsService$BufferInfo;

    iput p3, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mUid:I

    iput p4, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mPid:I

    iput-object p2, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mCallback:Landroid/view/IGraphicsStatsCallback;

    invoke-interface {p2}, Landroid/view/IGraphicsStatsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    iput-object p2, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mToken:Landroid/os/IBinder;

    const/4 p3, 0x0

    invoke-interface {p2, p0, p3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Landroid/graphics/GraphicsStatsService;->-$$Nest$fgetmAshmemSize(Landroid/graphics/GraphicsStatsService;)I

    move-result p4

    invoke-static {p2, p4}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object p2

    iput-object p2, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/SharedMemory;

    invoke-virtual {p2}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mMapping:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p2, v0

    invoke-virtual {p2}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    :goto_0
    iget-object p2, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mMapping:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mMapping:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Landroid/graphics/GraphicsStatsService;->-$$Nest$fgetmZeroData(Landroid/graphics/GraphicsStatsService;)[B

    move-result-object p2

    invoke-static {p1}, Landroid/graphics/GraphicsStatsService;->-$$Nest$fgetmAshmemSize(Landroid/graphics/GraphicsStatsService;)I

    move-result p1

    invoke-virtual {p0, p2, p3, p1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 2

    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->this$0:Landroid/graphics/GraphicsStatsService;

    invoke-static {v0, p0}, Landroid/graphics/GraphicsStatsService;->-$$Nest$mprocessDied(Landroid/graphics/GraphicsStatsService;Landroid/graphics/GraphicsStatsService$ActiveBuffer;)V

    return-void
.end method

.method blacklist closeAllBuffers()V
    .locals 2

    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mMapping:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    iput-object v1, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mMapping:Ljava/nio/ByteBuffer;

    :cond_0
    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/SharedMemory;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    iput-object v1, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/SharedMemory;

    :cond_1
    return-void
.end method

.method blacklist getPfd()Landroid/os/ParcelFileDescriptor;
    .locals 2

    :try_start_0
    iget-object p0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/SharedMemory;

    invoke-virtual {p0}, Landroid/os/SharedMemory;->getFdDup()Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to get PFD from memory file"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method blacklist readBytes([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mMapping:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p0, p0, Landroid/graphics/GraphicsStatsService$ActiveBuffer;->mMapping:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, v1, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "SharedMemory has been deactivated"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

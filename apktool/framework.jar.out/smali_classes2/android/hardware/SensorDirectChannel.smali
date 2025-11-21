.class public final Landroid/hardware/SensorDirectChannel;
.super Ljava/lang/Object;
.source "SensorDirectChannel.java"

# interfaces
.implements Ljava/nio/channels/Channel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorDirectChannel$RateLevel;,
        Landroid/hardware/SensorDirectChannel$MemoryType;
    }
.end annotation


# static fields
.field public static final whitelist RATE_FAST:I = 0x2

.field public static final whitelist RATE_NORMAL:I = 0x1

.field public static final whitelist RATE_STOP:I = 0x0

.field public static final whitelist RATE_VERY_FAST:I = 0x3

.field public static final whitelist TYPE_HARDWARE_BUFFER:I = 0x2

.field public static final whitelist TYPE_MEMORY_FILE:I = 0x1


# instance fields
.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final greylist-max-o mManager:Landroid/hardware/SensorManager;

.field private final greylist-max-o mNativeHandle:I

.field private final greylist-max-o mSize:J

.field private final greylist-max-o mType:I


# direct methods
.method constructor greylist-max-o <init>(Landroid/hardware/SensorManager;IIJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorDirectChannel;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/SensorDirectChannel;->mCloseGuard:Ldalvik/system/CloseGuard;

    iput-object p1, p0, Landroid/hardware/SensorDirectChannel;->mManager:Landroid/hardware/SensorManager;

    iput p2, p0, Landroid/hardware/SensorDirectChannel;->mNativeHandle:I

    iput p3, p0, Landroid/hardware/SensorDirectChannel;->mType:I

    iput-wide p4, p0, Landroid/hardware/SensorDirectChannel;->mSize:J

    const-string p0, "SensorDirectChannel"

    invoke-virtual {v0, p0}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method static greylist-max-o encodeData(Landroid/os/MemoryFile;)[J
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, -0x1

    :goto_0
    int-to-long v0, p0

    const/4 p0, 0x3

    new-array p0, p0, [J

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    aput-wide v2, p0, v4

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    aput-wide v2, p0, v4

    const/4 v2, 0x2

    aput-wide v0, p0, v2

    return-object p0
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->destroyDirectChannel(Landroid/hardware/SensorDirectChannel;)V

    :cond_0
    return-void
.end method

.method public whitelist configure(Landroid/hardware/Sensor;I)I
    .locals 1

    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0, p1, p2}, Landroid/hardware/SensorManager;->configureDirectChannelImpl(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I

    move-result p0

    return p0
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/SensorDirectChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method greylist-max-o getNativeHandle()I
    .locals 0

    iget p0, p0, Landroid/hardware/SensorDirectChannel;->mNativeHandle:I

    return p0
.end method

.method public whitelist test-api isOpen()Z
    .locals 0

    iget-object p0, p0, Landroid/hardware/SensorDirectChannel;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public greylist isValid()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/hardware/SensorDirectChannel;->isOpen()Z

    move-result p0

    return p0
.end method

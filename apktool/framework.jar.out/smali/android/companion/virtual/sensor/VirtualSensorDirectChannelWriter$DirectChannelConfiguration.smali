.class final Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;
.super Ljava/lang/Object;
.source "VirtualSensorDirectChannelWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DirectChannelConfiguration"
.end annotation


# instance fields
.field private final blacklist mEventCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field private final blacklist mReportToken:I

.field private final blacklist mSensorType:I

.field private final blacklist mSharedMemoryWrapper:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;


# direct methods
.method constructor blacklist <init>(IILandroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;->mReportToken:I

    iput p2, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;->mSensorType:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x1

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;->mEventCounter:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p3, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;->mSharedMemoryWrapper:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;

    return-void
.end method


# virtual methods
.method blacklist write(Landroid/companion/virtual/sensor/VirtualSensorEvent;)V
    .locals 11

    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;->mEventCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAcquire()J

    move-result-wide v4

    iget-object v1, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;->mSharedMemoryWrapper:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;

    iget v2, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;->mReportToken:I

    iget v3, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;->mSensorType:I

    const-wide/16 v7, 0x1

    add-long v9, v4, v7

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$SharedMemoryWrapper;->write(IIJLandroid/companion/virtual/sensor/VirtualSensorEvent;)V

    const-wide v0, 0x100000000L

    cmp-long p1, v9, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-wide v7, v9

    :goto_0
    iget-object p0, p0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelWriter$DirectChannelConfiguration;->mEventCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->setRelease(J)V

    return-void
.end method

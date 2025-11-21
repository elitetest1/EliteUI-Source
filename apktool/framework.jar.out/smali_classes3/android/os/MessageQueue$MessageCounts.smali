.class final Landroid/os/MessageQueue$MessageCounts;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MessageCounts"
.end annotation


# static fields
.field private static final blacklist AWAKE:J = 0x7fffffffffffffffL

.field private static final blacklist MESSAGE_FLUSH_THRESHOLD:I = 0xa

.field private static blacklist sCounts:Ljava/lang/invoke/VarHandle;


# instance fields
.field private volatile blacklist mCountsValue:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    const-class v1, Landroid/os/MessageQueue$MessageCounts;

    const-string/jumbo v2, "mCountsValue"

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    sput-object v0, Landroid/os/MessageQueue$MessageCounts;->sCounts:Ljava/lang/invoke/VarHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VarHandle lookup failed with exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConcurrentMessageQueue"

    invoke-static {v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/MessageQueue$MessageCounts;->mCountsValue:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/MessageQueue-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/MessageQueue$MessageCounts;-><init>()V

    return-void
.end method

.method private static blacklist combineCounts(II)J
    .locals 2

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private static blacklist numCancelled(J)I
    .locals 0

    long-to-int p0, p0

    return p0
.end method

.method private static blacklist numQueued(J)I
    .locals 1

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method


# virtual methods
.method public blacklist clearCounts()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/MessageQueue$MessageCounts;->mCountsValue:J

    return-void
.end method

.method public blacklist incrementCancelled()Z
    .locals 8

    :goto_0
    iget-wide v2, p0, Landroid/os/MessageQueue$MessageCounts;->mCountsValue:J

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v4, v2, v0

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    :cond_0
    invoke-static {v2, v3}, Landroid/os/MessageQueue$MessageCounts;->numQueued(J)I

    move-result v4

    invoke-static {v2, v3}, Landroid/os/MessageQueue$MessageCounts;->numCancelled(J)I

    move-result v6

    const/16 v7, 0xa

    if-le v4, v7, :cond_1

    shr-int/lit8 v7, v4, 0x1

    if-ge v7, v6, :cond_1

    const/4 v5, 0x1

    :cond_1
    move v7, v5

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v6, 0x1

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v4, v0}, Landroid/os/MessageQueue$MessageCounts;->combineCounts(II)J

    move-result-wide v0

    :goto_1
    move-wide v4, v0

    sget-object v0, Landroid/os/MessageQueue$MessageCounts;->sCounts:Ljava/lang/invoke/VarHandle;

    move-object v1, p0

    invoke-polymorphic/range {v0 .. v5}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Landroid/os/MessageQueue$MessageCounts;JJ)Z

    move-result p0

    if-eqz p0, :cond_3

    return v7

    :cond_3
    move-object p0, v1

    goto :goto_0
.end method

.method public blacklist incrementQueued()V
    .locals 6

    :goto_0
    iget-wide v2, p0, Landroid/os/MessageQueue$MessageCounts;->mCountsValue:J

    invoke-static {v2, v3}, Landroid/os/MessageQueue$MessageCounts;->numQueued(J)I

    move-result v0

    invoke-static {v2, v3}, Landroid/os/MessageQueue$MessageCounts;->numCancelled(J)I

    move-result v1

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v1}, Landroid/os/MessageQueue$MessageCounts;->combineCounts(II)J

    move-result-wide v4

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/MessageQueue$MessageCounts;->sCounts:Ljava/lang/invoke/VarHandle;

    move-object v1, p0

    invoke-polymorphic/range {v0 .. v5}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Landroid/os/MessageQueue$MessageCounts;JJ)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    move-object p0, v1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

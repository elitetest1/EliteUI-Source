.class public final Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;
.super Ljava/lang/Object;
.source "SQLiteWalBackgroundCheckpoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint$WalCheckpointExecutor;
    }
.end annotation


# static fields
.field private static final blacklist CHECKPOINT_THRESHOLD:I = 0x927c0

.field private static final blacklist HUGE_WAL_SIZE_THRESHOLD:J = 0x6400000L

.field private static final blacklist TAG:Ljava/lang/String; = "SQLiteWalBackgroundCheckpoint"


# instance fields
.field private blacklist mIsCheckpointRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mLastCheckpointTime:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsCheckpointRunning(Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;->mIsCheckpointRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastCheckpointTime(Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;J)V
    .locals 0

    iput-wide p1, p0, Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;->mLastCheckpointTime:J

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;->mIsCheckpointRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;->mLastCheckpointTime:J

    return-void
.end method


# virtual methods
.method public blacklist tryBackgroundCheckpoint(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/File;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;->mLastCheckpointTime:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x6400000

    cmp-long p2, v0, v2

    if-gtz p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;->mIsCheckpointRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance p2, Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint$WalCheckpointExecutor;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint$WalCheckpointExecutor;-><init>(Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint-IA;)V

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint$WalCheckpointExecutor;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p0, p0, Landroid/database/sqlite/SQLiteWalBackgroundCheckpoint;->mIsCheckpointRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void
.end method

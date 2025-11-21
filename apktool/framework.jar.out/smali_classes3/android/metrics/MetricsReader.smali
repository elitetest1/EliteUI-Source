.class public Landroid/metrics/MetricsReader;
.super Ljava/lang/Object;
.source "MetricsReader.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/metrics/MetricsReader$LogReader;,
        Landroid/metrics/MetricsReader$Event;
    }
.end annotation


# instance fields
.field private greylist-max-o LOGTAGS:[I

.field private greylist-max-o mCheckpointTag:I

.field private greylist-max-o mPendingQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/metrics/LogMaker;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mReader:Landroid/metrics/MetricsReader$LogReader;

.field private greylist-max-o mSeenQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/metrics/LogMaker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    const v0, 0x80004

    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/metrics/MetricsReader;->LOGTAGS:[I

    new-instance v0, Landroid/metrics/MetricsReader$LogReader;

    invoke-direct {v0}, Landroid/metrics/MetricsReader$LogReader;-><init>()V

    iput-object v0, p0, Landroid/metrics/MetricsReader;->mReader:Landroid/metrics/MetricsReader$LogReader;

    const/4 v0, -0x1

    iput v0, p0, Landroid/metrics/MetricsReader;->mCheckpointTag:I

    return-void
.end method


# virtual methods
.method public whitelist checkpoint()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    rem-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Landroid/metrics/MetricsReader;->mCheckpointTag:I

    iget-object v1, p0, Landroid/metrics/MetricsReader;->mReader:Landroid/metrics/MetricsReader$LogReader;

    invoke-virtual {v1, v0}, Landroid/metrics/MetricsReader$LogReader;->writeCheckpoint(I)V

    iget-object v0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object p0, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public whitelist hasNext()Z
    .locals 0

    iget-object p0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public whitelist next()Landroid/metrics/LogMaker;
    .locals 1

    iget-object v0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/metrics/LogMaker;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    invoke-interface {p0, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public whitelist read(J)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Landroid/metrics/MetricsReader;->mReader:Landroid/metrics/MetricsReader$LogReader;

    iget-object v2, p0, Landroid/metrics/MetricsReader;->LOGTAGS:[I

    invoke-virtual {v1, v2, p1, p2, v0}, Landroid/metrics/MetricsReader$LogReader;->readEvents([IJLjava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    iget-object p1, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/metrics/MetricsReader$Event;

    invoke-virtual {p2}, Landroid/metrics/MetricsReader$Event;->getTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/metrics/MetricsReader$Event;->getData()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, [Ljava/lang/Object;

    if-eqz v3, :cond_1

    check-cast v2, [Ljava/lang/Object;

    goto :goto_2

    :cond_1
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    move-object v2, v3

    :goto_2
    new-instance v3, Landroid/metrics/LogMaker;

    invoke-direct {v3, v2}, Landroid/metrics/LogMaker;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v3, v0, v1}, Landroid/metrics/LogMaker;->setTimestamp(J)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {p2}, Landroid/metrics/MetricsReader$Event;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setUid(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {p2}, Landroid/metrics/MetricsReader$Event;->getProcessId()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setProcessId(I)Landroid/metrics/LogMaker;

    move-result-object p2

    invoke-virtual {p2}, Landroid/metrics/LogMaker;->getCategory()I

    move-result v0

    const/16 v1, 0x398

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Landroid/metrics/LogMaker;->getSubtype()I

    move-result p2

    iget v0, p0, Landroid/metrics/MetricsReader;->mCheckpointTag:I

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->clear()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method public whitelist reset()V
    .locals 2

    iget-object v0, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    iget-object v1, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/metrics/MetricsReader;->mCheckpointTag:I

    iget-object v0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    iget-object v1, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    iput-object v1, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    iput-object v0, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    return-void
.end method

.method public greylist-max-o setLogReader(Landroid/metrics/MetricsReader$LogReader;)V
    .locals 0

    iput-object p1, p0, Landroid/metrics/MetricsReader;->mReader:Landroid/metrics/MetricsReader$LogReader;

    return-void
.end method

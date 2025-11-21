.class public Landroid/os/Broadcaster;
.super Ljava/lang/Object;
.source "Broadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Broadcaster$Registration;
    }
.end annotation


# instance fields
.field private greylist-max-o mReg:Landroid/os/Broadcaster$Registration;


# direct methods
.method public constructor greylist-max-r <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-r broadcast(Landroid/os/Message;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    move-object v2, v1

    :cond_1
    iget v3, v2, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-lt v3, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, v2, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    if-ne v2, v1, :cond_1

    :goto_0
    iget v1, v2, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-ne v1, v0, :cond_3

    iget-object v0, v2, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    iget-object v1, v2, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    aget v6, v1, v3

    iput v6, v5, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public greylist-max-r cancelRequest(ILandroid/os/Handler;I)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    move-object v1, v0

    :cond_1
    iget v2, v1, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-lt v2, p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v1, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    if-ne v1, v0, :cond_1

    :goto_0
    iget v0, v1, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-ne v0, p1, :cond_5

    iget-object p1, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    iget-object v0, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_5

    aget-object v5, p1, v4

    if-ne v5, p2, :cond_4

    aget v5, v0, v4

    if-ne v5, p3, :cond_4

    add-int/lit8 p2, v2, -0x1

    new-array p3, p2, [Landroid/os/Handler;

    iput-object p3, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    new-array p2, p2, [I

    iput-object p2, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    if-lez v4, :cond_3

    iget-object p2, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    invoke-static {p1, v3, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    invoke-static {v0, v3, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    if-eqz v2, :cond_5

    add-int/lit8 p2, v4, 0x1

    iget-object p3, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    invoke-static {p1, p2, p3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    invoke-static {v0, p2, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public greylist-max-o dumpRegistrations()V
    .locals 7

    const-string v0, "Broadcaster "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " {"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    move-object v0, v1

    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    senderWhat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/os/Broadcaster$Registration;->senderWhat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v2, v0, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    array-length v2, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "        ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    if-ne v0, v1, :cond_0

    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist-max-r request(ILandroid/os/Handler;I)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Broadcaster$Registration;

    invoke-direct {v0, p0, v1}, Landroid/os/Broadcaster$Registration;-><init>(Landroid/os/Broadcaster;Landroid/os/Broadcaster-IA;)V

    iput p1, v0, Landroid/os/Broadcaster$Registration;->senderWhat:I

    new-array p1, v2, [Landroid/os/Handler;

    iput-object p1, v0, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    new-array p1, v2, [I

    iput-object p1, v0, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    iget-object p1, v0, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    aput-object p2, p1, v3

    iget-object p1, v0, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    aput p3, p1, v3

    iput-object v0, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    iput-object v0, v0, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    iput-object v0, v0, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    goto/16 :goto_3

    :cond_0
    move-object v4, v0

    :cond_1
    iget v5, v4, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-lt v5, p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v4, v4, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    if-ne v4, v0, :cond_1

    :goto_0
    iget v0, v4, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-eq v0, p1, :cond_4

    new-instance v0, Landroid/os/Broadcaster$Registration;

    invoke-direct {v0, p0, v1}, Landroid/os/Broadcaster$Registration;-><init>(Landroid/os/Broadcaster;Landroid/os/Broadcaster-IA;)V

    iput p1, v0, Landroid/os/Broadcaster$Registration;->senderWhat:I

    new-array p1, v2, [Landroid/os/Handler;

    iput-object p1, v0, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    new-array p1, v2, [I

    iput-object p1, v0, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    iput-object v4, v0, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    iget-object p1, v4, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    iput-object p1, v0, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    iget-object p1, v4, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    iput-object v0, p1, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    iput-object v0, v4, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    iget-object p1, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    if-ne v4, p1, :cond_3

    iget p1, v4, Landroid/os/Broadcaster$Registration;->senderWhat:I

    iget v1, v0, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-le p1, v1, :cond_3

    iput-object v0, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    :cond_3
    move-object v4, v0

    goto :goto_2

    :cond_4
    iget-object p1, v4, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    array-length p1, p1

    iget-object v0, v4, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    iget-object v1, v4, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    move v2, v3

    :goto_1
    if-ge v2, p1, :cond_6

    aget-object v5, v0, v2

    if-ne v5, p2, :cond_5

    aget v5, v1, v2

    if-ne v5, p3, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v2, p1, 0x1

    new-array v5, v2, [Landroid/os/Handler;

    iput-object v5, v4, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    iget-object v5, v4, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    invoke-static {v0, v3, v5, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v0, v2, [I

    iput-object v0, v4, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    iget-object v0, v4, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    invoke-static {v1, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, p1

    :goto_2
    iget-object p1, v4, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    aput-object p2, p1, v3

    iget-object p1, v4, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    aput p3, p1, v3

    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

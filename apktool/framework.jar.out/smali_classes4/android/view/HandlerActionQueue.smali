.class public Landroid/view/HandlerActionQueue;
.super Ljava/lang/Object;
.source "HandlerActionQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/HandlerActionQueue$HandlerAction;
    }
.end annotation


# instance fields
.field private greylist-max-o mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

.field private greylist-max-o mCount:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o executeActions(Landroid/os/Handler;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    iget v1, p0, Landroid/view/HandlerActionQueue;->mCount:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    iget-object v5, v4, Landroid/view/HandlerActionQueue$HandlerAction;->action:Ljava/lang/Runnable;

    iget-wide v6, v4, Landroid/view/HandlerActionQueue$HandlerAction;->delay:J

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    iput v2, p0, Landroid/view/HandlerActionQueue;->mCount:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public greylist-max-o getDelay(I)J
    .locals 1

    iget v0, p0, Landroid/view/HandlerActionQueue;->mCount:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    aget-object p0, p0, p1

    iget-wide p0, p0, Landroid/view/HandlerActionQueue$HandlerAction;->delay:J

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public greylist-max-o getRunnable(I)Ljava/lang/Runnable;
    .locals 1

    iget v0, p0, Landroid/view/HandlerActionQueue;->mCount:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    aget-object p0, p0, p1

    iget-object p0, p0, Landroid/view/HandlerActionQueue$HandlerAction;->action:Ljava/lang/Runnable;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public greylist-max-o post(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/HandlerActionQueue;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public greylist-max-o postDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    new-instance v0, Landroid/view/HandlerActionQueue$HandlerAction;

    invoke-direct {v0, p1, p2, p3}, Landroid/view/HandlerActionQueue$HandlerAction;-><init>(Ljava/lang/Runnable;J)V

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    if-nez p1, :cond_0

    const/4 p1, 0x4

    new-array p1, p1, [Landroid/view/HandlerActionQueue$HandlerAction;

    iput-object p1, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    :cond_0
    iget-object p1, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    iget p2, p0, Landroid/view/HandlerActionQueue;->mCount:I

    invoke-static {p1, p2, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/HandlerActionQueue$HandlerAction;

    iput-object p1, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    iget p1, p0, Landroid/view/HandlerActionQueue;->mCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/view/HandlerActionQueue;->mCount:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public greylist-max-o removeCallbacks(Ljava/lang/Runnable;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/view/HandlerActionQueue;->mCount:I

    iget-object v1, p0, Landroid/view/HandlerActionQueue;->mActions:[Landroid/view/HandlerActionQueue$HandlerAction;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v4, v1, v2

    invoke-virtual {v4, p1}, Landroid/view/HandlerActionQueue$HandlerAction;->matches(Ljava/lang/Runnable;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    if-eq v3, v2, :cond_1

    aget-object v4, v1, v2

    aput-object v4, v1, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iput v3, p0, Landroid/view/HandlerActionQueue;->mCount:I

    :goto_2
    if-ge v3, v0, :cond_3

    const/4 p1, 0x0

    aput-object p1, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

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

.method public greylist-max-o size()I
    .locals 0

    iget p0, p0, Landroid/view/HandlerActionQueue;->mCount:I

    return p0
.end method

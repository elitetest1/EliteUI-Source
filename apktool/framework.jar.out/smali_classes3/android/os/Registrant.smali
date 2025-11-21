.class public Landroid/os/Registrant;
.super Ljava/lang/Object;
.source "Registrant.java"


# instance fields
.field greylist-max-o refH:Ljava/lang/ref/WeakReference;

.field greylist-max-o userObj:Ljava/lang/Object;

.field greylist-max-o what:I


# direct methods
.method public constructor greylist <init>(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/os/Registrant;->refH:Ljava/lang/ref/WeakReference;

    iput p2, p0, Landroid/os/Registrant;->what:I

    iput-object p3, p0, Landroid/os/Registrant;->userObj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public greylist clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/Registrant;->refH:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Landroid/os/Registrant;->userObj:Ljava/lang/Object;

    return-void
.end method

.method public greylist-max-p getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/os/Registrant;->refH:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method greylist-max-o internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    invoke-virtual {p0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Registrant;->clear()V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Landroid/os/Registrant;->what:I

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/AsyncResult;

    iget-object p0, p0, Landroid/os/Registrant;->userObj:Ljava/lang/Object;

    invoke-direct {v2, p0, p1, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public greylist messageForRegistrant()Landroid/os/Message;
    .locals 2

    invoke-virtual {p0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Registrant;->clear()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Landroid/os/Registrant;->what:I

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p0, p0, Landroid/os/Registrant;->userObj:Ljava/lang/Object;

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public greylist-max-o notifyException(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public greylist notifyRegistrant()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/os/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public greylist notifyRegistrant(Landroid/os/AsyncResult;)V
    .locals 1

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v0, p1}, Landroid/os/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public greylist notifyResult(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

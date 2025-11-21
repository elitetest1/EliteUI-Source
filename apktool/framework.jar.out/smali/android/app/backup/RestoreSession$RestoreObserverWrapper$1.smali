.class Landroid/app/backup/RestoreSession$RestoreObserverWrapper$1;
.super Landroid/os/Handler;
.source "RestoreSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/backup/RestoreSession$RestoreObserverWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/content/Context;Landroid/app/backup/RestoreObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

.field final synthetic blacklist val$this$0:Landroid/app/backup/RestoreSession;


# direct methods
.method constructor blacklist <init>(Landroid/app/backup/RestoreSession$RestoreObserverWrapper;Landroid/os/Looper;Landroid/app/backup/RestoreSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper$1;->this$1:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iput-object p3, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper$1;->val$this$0:Landroid/app/backup/RestoreSession;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper$1;->this$1:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object p0, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;->mAppObserver:Landroid/app/backup/RestoreObserver;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Landroid/app/backup/RestoreSet;

    invoke-virtual {p0, p1}, Landroid/app/backup/RestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V

    return-void

    :cond_1
    iget-object p0, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper$1;->this$1:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object p0, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;->mAppObserver:Landroid/app/backup/RestoreObserver;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Landroid/app/backup/RestoreObserver;->restoreFinished(I)V

    return-void

    :cond_2
    iget-object p0, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper$1;->this$1:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object p0, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;->mAppObserver:Landroid/app/backup/RestoreObserver;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/app/backup/RestoreObserver;->onUpdate(ILjava/lang/String;)V

    return-void

    :cond_3
    iget-object p0, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper$1;->this$1:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object p0, p0, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;->mAppObserver:Landroid/app/backup/RestoreObserver;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Landroid/app/backup/RestoreObserver;->restoreStarting(I)V

    return-void
.end method

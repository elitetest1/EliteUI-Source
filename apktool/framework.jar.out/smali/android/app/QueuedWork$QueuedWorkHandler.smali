.class Landroid/app/QueuedWork$QueuedWorkHandler;
.super Landroid/os/Handler;
.source "QueuedWork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/QueuedWork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueuedWorkHandler"
.end annotation


# static fields
.field static final greylist-max-o MSG_RUN:I = 0x1


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 0

    iget p0, p1, Landroid/os/Message;->what:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    invoke-static {}, Landroid/app/QueuedWork;->-$$Nest$smprocessPendingWork()V

    :cond_0
    return-void
.end method

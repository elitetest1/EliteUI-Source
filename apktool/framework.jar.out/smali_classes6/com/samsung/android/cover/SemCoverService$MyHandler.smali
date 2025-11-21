.class final Lcom/samsung/android/cover/SemCoverService$MyHandler;
.super Landroid/os/Handler;
.source "SemCoverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/SemCoverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# static fields
.field static final greylist MSG_COVER_APP_COVERED:I = 0x3

.field static final greylist MSG_SYSTEM_READY:I = 0x1

.field static final greylist MSG_UPDATE_COVER_STATE:I = 0x2


# instance fields
.field final synthetic greylist this$0:Lcom/samsung/android/cover/SemCoverService;


# direct methods
.method public constructor greylist <init>(Lcom/samsung/android/cover/SemCoverService;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/cover/SemCoverService$MyHandler;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/cover/SemCoverService$MyHandler;->this$0:Lcom/samsung/android/cover/SemCoverService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/cover/SemCoverService;->onCoverAppCovered(Z)I

    return-void

    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_4

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/cover/SemCoverService$MyHandler;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-static {v0}, Lcom/samsung/android/cover/SemCoverService;->-$$Nest$fgetmAttach(Lcom/samsung/android/cover/SemCoverService;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/cover/SemCoverService$MyHandler;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cover/SemCoverService;->onCoverAttached(Lcom/samsung/android/cover/CoverState;)V

    iget-object v0, p0, Lcom/samsung/android/cover/SemCoverService$MyHandler;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-static {v0, v1}, Lcom/samsung/android/cover/SemCoverService;->-$$Nest$fputmAttach(Lcom/samsung/android/cover/SemCoverService;Z)V

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/cover/SemCoverService$MyHandler;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/cover/SemCoverService;->onCoverStateUpdated(Lcom/samsung/android/cover/CoverState;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/cover/SemCoverService$MyHandler;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-virtual {p0}, Lcom/samsung/android/cover/SemCoverService;->onSystemReady()V

    return-void
.end method

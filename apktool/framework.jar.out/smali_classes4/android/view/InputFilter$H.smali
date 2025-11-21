.class final Landroid/view/InputFilter$H;
.super Landroid/os/Handler;
.source "InputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/InputFilter;


# direct methods
.method public constructor blacklist <init>(Landroid/view/InputFilter;Landroid/os/Looper;)V
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

    iput-object p1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/InputEvent;

    :try_start_0
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {v1}, Landroid/view/InputFilter;->-$$Nest$fgetmInboundInputEventConsistencyVerifier(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {v1}, Landroid/view/InputFilter;->-$$Nest$fgetmInboundInputEventConsistencyVerifier(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/InputEventConsistencyVerifier;->onInputEvent(Landroid/view/InputEvent;I)V

    :cond_1
    iget-object p0, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, p1}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/view/InputEvent;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/view/InputEvent;->recycle()V

    throw p0

    :cond_2
    const/4 p1, 0x0

    :try_start_1
    iget-object v0, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-virtual {v0}, Landroid/view/InputFilter;->onUninstalled()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p0, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {p0, p1}, Landroid/view/InputFilter;->-$$Nest$fputmHost(Landroid/view/InputFilter;Landroid/view/IInputFilterHost;)V

    return-void

    :catchall_1
    move-exception v0

    iget-object p0, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {p0, p1}, Landroid/view/InputFilter;->-$$Nest$fputmHost(Landroid/view/InputFilter;Landroid/view/IInputFilterHost;)V

    throw v0

    :cond_3
    iget-object v0, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/IInputFilterHost;

    invoke-static {v0, p1}, Landroid/view/InputFilter;->-$$Nest$fputmHost(Landroid/view/InputFilter;Landroid/view/IInputFilterHost;)V

    iget-object p1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {p1}, Landroid/view/InputFilter;->-$$Nest$fgetmInboundInputEventConsistencyVerifier(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {p1}, Landroid/view/InputFilter;->-$$Nest$fgetmInboundInputEventConsistencyVerifier(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/InputEventConsistencyVerifier;->reset()V

    :cond_4
    iget-object p1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {p1}, Landroid/view/InputFilter;->-$$Nest$fgetmOutboundInputEventConsistencyVerifier(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {p1}, Landroid/view/InputFilter;->-$$Nest$fgetmOutboundInputEventConsistencyVerifier(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/InputEventConsistencyVerifier;->reset()V

    :cond_5
    iget-object p0, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-virtual {p0}, Landroid/view/InputFilter;->onInstalled()V

    return-void
.end method

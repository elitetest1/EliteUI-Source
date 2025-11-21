.class Landroid/telecom/CallStreamingService$1;
.super Landroid/os/Handler;
.source "CallStreamingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallStreamingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/CallStreamingService;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/CallStreamingService;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    invoke-static {v0}, Landroid/telecom/CallStreamingService;->-$$Nest$fgetmStreamingCallAdapter(Landroid/telecom/CallStreamingService;)Landroid/telecom/StreamingCallAdapter;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_0

    const-string p1, "handleMessage: null adapter!"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    invoke-static {v0}, Landroid/telecom/CallStreamingService;->-$$Nest$fgetmStreamingCallAdapter(Landroid/telecom/CallStreamingService;)Landroid/telecom/StreamingCallAdapter;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    invoke-static {v0}, Landroid/telecom/CallStreamingService;->-$$Nest$fgetmCall(Landroid/telecom/CallStreamingService;)Landroid/telecom/StreamingCall;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telecom/StreamingCall;->requestStreamingState(I)V

    iget-object p0, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    invoke-virtual {p0, p1}, Landroid/telecom/CallStreamingService;->onCallStreamingStateChanged(I)V

    return-void

    :cond_2
    const-string p1, "MSG_CALL_STREAMING_STOPPED"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/telecom/CallStreamingService;->-$$Nest$fputmCall(Landroid/telecom/CallStreamingService;Landroid/telecom/StreamingCall;)V

    iget-object p1, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    invoke-static {p1, v0}, Landroid/telecom/CallStreamingService;->-$$Nest$fputmStreamingCallAdapter(Landroid/telecom/CallStreamingService;Landroid/telecom/StreamingCallAdapter;)V

    iget-object p0, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    invoke-virtual {p0}, Landroid/telecom/CallStreamingService;->onCallStreamingStopped()V

    return-void

    :cond_3
    const-string v0, "MSG_CALL_STREAMING_STARTED"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telecom/StreamingCall;

    invoke-static {v0, p1}, Landroid/telecom/CallStreamingService;->-$$Nest$fputmCall(Landroid/telecom/CallStreamingService;Landroid/telecom/StreamingCall;)V

    iget-object p1, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    invoke-static {p1}, Landroid/telecom/CallStreamingService;->-$$Nest$fgetmCall(Landroid/telecom/CallStreamingService;)Landroid/telecom/StreamingCall;

    move-result-object p1

    iget-object v0, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    invoke-static {v0}, Landroid/telecom/CallStreamingService;->-$$Nest$fgetmStreamingCallAdapter(Landroid/telecom/CallStreamingService;)Landroid/telecom/StreamingCallAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/telecom/StreamingCall;->setAdapter(Landroid/telecom/StreamingCallAdapter;)V

    iget-object p0, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    invoke-static {p0}, Landroid/telecom/CallStreamingService;->-$$Nest$fgetmCall(Landroid/telecom/CallStreamingService;)Landroid/telecom/StreamingCall;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/telecom/CallStreamingService;->onCallStreamingStarted(Landroid/telecom/StreamingCall;)V

    return-void

    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_5

    const-string v0, "MSG_SET_STREAMING_CALL_ADAPTER"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    new-instance v0, Landroid/telecom/StreamingCallAdapter;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telecom/IStreamingCallAdapter;

    invoke-direct {v0, p1}, Landroid/telecom/StreamingCallAdapter;-><init>(Lcom/android/internal/telecom/IStreamingCallAdapter;)V

    invoke-static {p0, v0}, Landroid/telecom/CallStreamingService;->-$$Nest$fputmStreamingCallAdapter(Landroid/telecom/CallStreamingService;Landroid/telecom/StreamingCallAdapter;)V

    :cond_5
    :goto_0
    return-void
.end method

.class final Landroid/telecom/CallStreamingService$CallStreamingServiceBinder;
.super Lcom/android/internal/telecom/ICallStreamingService$Stub;
.source "CallStreamingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallStreamingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallStreamingServiceBinder"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/CallStreamingService;


# direct methods
.method private constructor blacklist <init>(Landroid/telecom/CallStreamingService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/telecom/CallStreamingService$CallStreamingServiceBinder;->this$0:Landroid/telecom/CallStreamingService;

    invoke-direct {p0}, Lcom/android/internal/telecom/ICallStreamingService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telecom/CallStreamingService;Landroid/telecom/CallStreamingService-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/CallStreamingService$CallStreamingServiceBinder;-><init>(Landroid/telecom/CallStreamingService;)V

    return-void
.end method


# virtual methods
.method public blacklist onCallStreamingStarted(Landroid/telecom/StreamingCall;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "onCallStreamingStarted"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Landroid/telecom/CallStreamingService$CallStreamingServiceBinder;->this$0:Landroid/telecom/CallStreamingService;

    invoke-static {p0}, Landroid/telecom/CallStreamingService;->-$$Nest$fgetmHandler(Landroid/telecom/CallStreamingService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onCallStreamingStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Landroid/telecom/CallStreamingService$CallStreamingServiceBinder;->this$0:Landroid/telecom/CallStreamingService;

    invoke-static {p0}, Landroid/telecom/CallStreamingService;->-$$Nest$fgetmHandler(Landroid/telecom/CallStreamingService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onCallStreamingStopped()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Landroid/telecom/CallStreamingService$CallStreamingServiceBinder;->this$0:Landroid/telecom/CallStreamingService;

    invoke-static {p0}, Landroid/telecom/CallStreamingService;->-$$Nest$fgetmHandler(Landroid/telecom/CallStreamingService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist setStreamingCallAdapter(Lcom/android/internal/telecom/IStreamingCallAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "setCallStreamingAdapter"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Landroid/telecom/CallStreamingService$CallStreamingServiceBinder;->this$0:Landroid/telecom/CallStreamingService;

    invoke-static {p0}, Landroid/telecom/CallStreamingService;->-$$Nest$fgetmHandler(Landroid/telecom/CallStreamingService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

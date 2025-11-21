.class Landroid/telephony/NetworkService$INetworkServiceWrapper;
.super Landroid/telephony/INetworkService$Stub;
.source "NetworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/NetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "INetworkServiceWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/NetworkService;


# direct methods
.method private constructor blacklist <init>(Landroid/telephony/NetworkService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/NetworkService$INetworkServiceWrapper;->this$0:Landroid/telephony/NetworkService;

    invoke-direct {p0}, Landroid/telephony/INetworkService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/NetworkService;Landroid/telephony/NetworkService-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/NetworkService$INetworkServiceWrapper;-><init>(Landroid/telephony/NetworkService;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o createNetworkServiceProvider(I)V
    .locals 3

    iget-object p0, p0, Landroid/telephony/NetworkService$INetworkServiceWrapper;->this$0:Landroid/telephony/NetworkService;

    invoke-static {p0}, Landroid/telephony/NetworkService;->-$$Nest$fgetmHandler(Landroid/telephony/NetworkService;)Landroid/telephony/NetworkService$NetworkServiceHandler;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/telephony/NetworkService$NetworkServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist registerForNetworkRegistrationInfoChanged(ILandroid/telephony/INetworkServiceCallback;)V
    .locals 2

    iget-object p0, p0, Landroid/telephony/NetworkService$INetworkServiceWrapper;->this$0:Landroid/telephony/NetworkService;

    invoke-static {p0}, Landroid/telephony/NetworkService;->-$$Nest$fgetmHandler(Landroid/telephony/NetworkService;)Landroid/telephony/NetworkService$NetworkServiceHandler;

    move-result-object p0

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/telephony/NetworkService$NetworkServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o removeNetworkServiceProvider(I)V
    .locals 3

    iget-object p0, p0, Landroid/telephony/NetworkService$INetworkServiceWrapper;->this$0:Landroid/telephony/NetworkService;

    invoke-static {p0}, Landroid/telephony/NetworkService;->-$$Nest$fgetmHandler(Landroid/telephony/NetworkService;)Landroid/telephony/NetworkService$NetworkServiceHandler;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/telephony/NetworkService$NetworkServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist requestNetworkRegistrationInfo(IILandroid/telephony/INetworkServiceCallback;)V
    .locals 1

    iget-object p0, p0, Landroid/telephony/NetworkService$INetworkServiceWrapper;->this$0:Landroid/telephony/NetworkService;

    invoke-static {p0}, Landroid/telephony/NetworkService;->-$$Nest$fgetmHandler(Landroid/telephony/NetworkService;)Landroid/telephony/NetworkService$NetworkServiceHandler;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/telephony/NetworkService$NetworkServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist unregisterForNetworkRegistrationInfoChanged(ILandroid/telephony/INetworkServiceCallback;)V
    .locals 2

    iget-object p0, p0, Landroid/telephony/NetworkService$INetworkServiceWrapper;->this$0:Landroid/telephony/NetworkService;

    invoke-static {p0}, Landroid/telephony/NetworkService;->-$$Nest$fgetmHandler(Landroid/telephony/NetworkService;)Landroid/telephony/NetworkService$NetworkServiceHandler;

    move-result-object p0

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/telephony/NetworkService$NetworkServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

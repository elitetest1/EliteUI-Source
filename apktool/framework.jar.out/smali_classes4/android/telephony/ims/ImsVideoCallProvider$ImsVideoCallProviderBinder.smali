.class final Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;
.super Lcom/android/ims/internal/IImsVideoCallProvider$Stub;
.source "ImsVideoCallProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsVideoCallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImsVideoCallProviderBinder"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ims/ImsVideoCallProvider;


# direct methods
.method private constructor blacklist <init>(Landroid/telephony/ims/ImsVideoCallProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/ims/ImsVideoCallProvider;Landroid/telephony/ims/ImsVideoCallProvider-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;-><init>(Landroid/telephony/ims/ImsVideoCallProvider;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o requestCallDataUsage()V
    .locals 1

    iget-object p0, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-static {p0}, Landroid/telephony/ims/ImsVideoCallProvider;->-$$Nest$fgetmProviderHandler(Landroid/telephony/ims/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o requestCameraCapabilities()V
    .locals 1

    iget-object p0, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-static {p0}, Landroid/telephony/ims/ImsVideoCallProvider;->-$$Nest$fgetmProviderHandler(Landroid/telephony/ims/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 1

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object p0, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-static {p0}, Landroid/telephony/ims/ImsVideoCallProvider;->-$$Nest$fgetmProviderHandler(Landroid/telephony/ims/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 1

    iget-object p0, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-static {p0}, Landroid/telephony/ims/ImsVideoCallProvider;->-$$Nest$fgetmProviderHandler(Landroid/telephony/ims/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o setCallback(Lcom/android/ims/internal/IImsVideoCallCallback;)V
    .locals 1

    iget-object p0, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-static {p0}, Landroid/telephony/ims/ImsVideoCallProvider;->-$$Nest$fgetmProviderHandler(Landroid/telephony/ims/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o setCamera(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object p0, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-static {p0}, Landroid/telephony/ims/ImsVideoCallProvider;->-$$Nest$fgetmProviderHandler(Landroid/telephony/ims/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o setDeviceOrientation(I)V
    .locals 2

    iget-object p0, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-static {p0}, Landroid/telephony/ims/ImsVideoCallProvider;->-$$Nest$fgetmProviderHandler(Landroid/telephony/ims/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o setDisplaySurface(Landroid/view/Surface;)V
    .locals 1

    iget-object p0, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-static {p0}, Landroid/telephony/ims/ImsVideoCallProvider;->-$$Nest$fgetmProviderHandler(Landroid/telephony/ims/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o setPauseImage(Landroid/net/Uri;)V
    .locals 1

    iget-object p0, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-static {p0}, Landroid/telephony/ims/ImsVideoCallProvider;->-$$Nest$fgetmProviderHandler(Landroid/telephony/ims/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o setPreviewSurface(Landroid/view/Surface;)V
    .locals 1

    iget-object p0, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-static {p0}, Landroid/telephony/ims/ImsVideoCallProvider;->-$$Nest$fgetmProviderHandler(Landroid/telephony/ims/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o setZoom(F)V
    .locals 1

    iget-object p0, p0, Landroid/telephony/ims/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-static {p0}, Landroid/telephony/ims/ImsVideoCallProvider;->-$$Nest$fgetmProviderHandler(Landroid/telephony/ims/ImsVideoCallProvider;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x6

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

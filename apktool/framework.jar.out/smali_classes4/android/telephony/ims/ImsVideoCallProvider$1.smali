.class Landroid/telephony/ims/ImsVideoCallProvider$1;
.super Landroid/os/Handler;
.source "ImsVideoCallProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsVideoCallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ims/ImsVideoCallProvider;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/ims/ImsVideoCallProvider;Landroid/os/Looper;)V
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

    iput-object p1, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsVideoCallProvider;->onSetPauseImage(Landroid/net/Uri;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsVideoCallProvider;->onRequestCallDataUsage()V

    return-void

    :pswitch_2
    iget-object p0, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsVideoCallProvider;->onRequestCameraCapabilities()V

    return-void

    :pswitch_3
    iget-object p0, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telecom/VideoProfile;

    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsVideoCallProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    return-void

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    :try_start_0
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/VideoProfile;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile;

    iget-object p0, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ims/ImsVideoCallProvider;->onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw p0

    :pswitch_5
    iget-object p0, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsVideoCallProvider;->onSetZoom(F)V

    return-void

    :pswitch_6
    iget-object p0, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsVideoCallProvider;->onSetDeviceOrientation(I)V

    return-void

    :pswitch_7
    iget-object p0, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/Surface;

    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsVideoCallProvider;->onSetDisplaySurface(Landroid/view/Surface;)V

    return-void

    :pswitch_8
    iget-object p0, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/Surface;

    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsVideoCallProvider;->onSetPreviewSurface(Landroid/view/Surface;)V

    return-void

    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    :try_start_1
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsVideoCallProvider;->onSetCamera(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ims/ImsVideoCallProvider;->onSetCamera(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw p0

    :pswitch_a
    iget-object p0, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-static {p0, p1}, Landroid/telephony/ims/ImsVideoCallProvider;->-$$Nest$fputmCallback(Landroid/telephony/ims/ImsVideoCallProvider;Lcom/android/ims/internal/IImsVideoCallCallback;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

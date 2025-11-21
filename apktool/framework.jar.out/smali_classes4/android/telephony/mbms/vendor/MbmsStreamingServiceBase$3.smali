.class Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;
.super Landroid/telephony/mbms/StreamingServiceCallback;
.source "MbmsStreamingServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->startStreaming(ILjava/lang/String;Landroid/telephony/mbms/IStreamingServiceCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

.field final synthetic blacklist val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

.field final synthetic blacklist val$subscriptionId:I

.field final synthetic blacklist val$uid:I


# direct methods
.method constructor blacklist <init>(Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;Landroid/telephony/mbms/IStreamingServiceCallback;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iput-object p2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    iput p3, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$uid:I

    iput p4, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$subscriptionId:I

    invoke-direct {p0}, Landroid/telephony/mbms/StreamingServiceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onBroadcastSignalStrengthUpdated(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    invoke-interface {v0, p1}, Landroid/telephony/mbms/IStreamingServiceCallback;->onBroadcastSignalStrengthUpdated(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iget v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$uid:I

    iget p0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$subscriptionId:I

    invoke-virtual {p1, v0, p0}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    return-void
.end method

.method public whitelist onError(ILjava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/mbms/IStreamingServiceCallback;->onError(ILjava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Middleware cannot send an unknown error."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iget p2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$uid:I

    iget p0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$subscriptionId:I

    invoke-virtual {p1, p2, p0}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    return-void
.end method

.method public whitelist onMediaDescriptionUpdated()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    invoke-interface {v0}, Landroid/telephony/mbms/IStreamingServiceCallback;->onMediaDescriptionUpdated()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iget v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$uid:I

    iget p0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$subscriptionId:I

    invoke-virtual {v0, v1, p0}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    return-void
.end method

.method public whitelist onStreamMethodUpdated(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    invoke-interface {v0, p1}, Landroid/telephony/mbms/IStreamingServiceCallback;->onStreamMethodUpdated(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iget v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$uid:I

    iget p0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$subscriptionId:I

    invoke-virtual {p1, v0, p0}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    return-void
.end method

.method public whitelist onStreamStateUpdated(II)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$callback:Landroid/telephony/mbms/IStreamingServiceCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/mbms/IStreamingServiceCallback;->onStreamStateUpdated(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iget p2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$uid:I

    iget p0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;->val$subscriptionId:I

    invoke-virtual {p1, p2, p0}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    return-void
.end method

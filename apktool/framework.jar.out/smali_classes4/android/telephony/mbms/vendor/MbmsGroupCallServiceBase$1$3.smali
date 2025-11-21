.class Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;
.super Ljava/lang/Object;
.source "MbmsGroupCallServiceBase.java"

# interfaces
.implements Landroid/telephony/mbms/GroupCallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->startGroupCall(IJLjava/util/List;Ljava/util/List;Landroid/telephony/mbms/IGroupCallCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;

.field final synthetic blacklist val$callback:Landroid/telephony/mbms/IGroupCallCallback;

.field final synthetic blacklist val$subscriptionId:I

.field final synthetic blacklist val$uid:I


# direct methods
.method constructor blacklist <init>(Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;Landroid/telephony/mbms/IGroupCallCallback;II)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;->this$1:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;

    iput-object p2, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;->val$callback:Landroid/telephony/mbms/IGroupCallCallback;

    iput p3, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;->val$uid:I

    iput p4, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;->val$subscriptionId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onBroadcastSignalStrengthUpdated(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;->val$callback:Landroid/telephony/mbms/IGroupCallCallback;

    invoke-interface {v0, p1}, Landroid/telephony/mbms/IGroupCallCallback;->onBroadcastSignalStrengthUpdated(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;->this$1:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;

    iget-object p1, p1, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;

    iget v0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;->val$uid:I

    iget p0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;->val$subscriptionId:I

    invoke-virtual {p1, v0, p0}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;->onAppCallbackDied(II)V

    return-void
.end method

.method public whitelist onError(ILjava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;->val$callback:Landroid/telephony/mbms/IGroupCallCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/mbms/IGroupCallCallback;->onError(ILjava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Middleware cannot send an unknown error."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;->this$1:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;

    iget-object p1, p1, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;

    iget p2, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;->val$uid:I

    iget p0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;->val$subscriptionId:I

    invoke-virtual {p1, p2, p0}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;->onAppCallbackDied(II)V

    return-void
.end method

.method public whitelist onGroupCallStateChanged(II)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;->val$callback:Landroid/telephony/mbms/IGroupCallCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/mbms/IGroupCallCallback;->onGroupCallStateChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;->this$1:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;

    iget-object p1, p1, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;

    iget p2, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;->val$uid:I

    iget p0, p0, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase$1$3;->val$subscriptionId:I

    invoke-virtual {p1, p2, p0}, Landroid/telephony/mbms/vendor/MbmsGroupCallServiceBase;->onAppCallbackDied(II)V

    return-void
.end method

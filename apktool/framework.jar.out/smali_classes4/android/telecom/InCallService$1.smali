.class Landroid/telecom/InCallService$1;
.super Landroid/os/Handler;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/InCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/InCallService;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/InCallService;Landroid/os/Looper;)V
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

    iput-object p1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object p0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/telecom/InCallService;->onMuteStateChanged(Z)V

    return-void

    :pswitch_1
    iget-object p0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroid/telecom/InCallService;->onAvailableCallEndpointsChanged(Ljava/util/List;)V

    return-void

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telecom/CallEndpoint;

    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmCallEndpoint(Landroid/telecom/InCallService;)Landroid/telecom/CallEndpoint;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0, p1}, Landroid/telecom/InCallService;->-$$Nest$fputmCallEndpoint(Landroid/telecom/InCallService;Landroid/telecom/CallEndpoint;)V

    iget-object p0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {p0}, Landroid/telecom/InCallService;->-$$Nest$fgetmCallEndpoint(Landroid/telecom/InCallService;)Landroid/telecom/CallEndpoint;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/telecom/InCallService;->onCallEndpointChanged(Landroid/telecom/CallEndpoint;)V

    return-void

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {p0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telecom/Phone;->internalOnHandoverComplete(Ljava/lang/String;)V

    return-void

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {p0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Landroid/telecom/Phone;->internalOnHandoverFailed(Ljava/lang/String;I)V

    return-void

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {p0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Landroid/telecom/Phone;->internalOnRttInitiationFailure(Ljava/lang/String;I)V

    return-void

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {p0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Landroid/telecom/Phone;->internalOnRttUpgradeRequest(Ljava/lang/String;I)V

    return-void

    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    :try_start_0
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    iget-object p0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {p0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object p0

    invoke-virtual {p0, v0, v1, v2}, Landroid/telecom/Phone;->internalOnConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw p0

    :pswitch_8
    iget-object p0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {p0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telecom/Phone;->internalSilenceRinger()V

    return-void

    :pswitch_9
    iget-object p0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {p0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Landroid/telecom/Phone;->internalSetCanAddCall(Z)V

    return-void

    :pswitch_a
    iget-object p0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {p0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/telecom/Phone;->internalBringToForeground(Z)V

    return-void

    :pswitch_b
    iget-object p0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {p0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telecom/CallAudioState;

    invoke-virtual {p0, p1}, Landroid/telecom/Phone;->internalCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    return-void

    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    :try_start_1
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {p0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/telecom/Phone;->internalSetPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw p0

    :pswitch_d
    iget-object p0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {p0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telecom/ParcelableCall;

    invoke-virtual {p0, p1}, Landroid/telecom/Phone;->internalUpdateCall(Landroid/telecom/ParcelableCall;)V

    return-void

    :pswitch_e
    iget-object p0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {p0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telecom/ParcelableCall;

    invoke-virtual {p0, p1}, Landroid/telecom/Phone;->internalAddCall(Landroid/telecom/ParcelableCall;)V

    return-void

    :pswitch_f
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo p1, "mPhone is already instantiated, ignoring request to reset adapter."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-virtual {v0}, Landroid/telecom/InCallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    new-instance v2, Landroid/telecom/Phone;

    new-instance v3, Landroid/telecom/InCallAdapter;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telecom/IInCallAdapter;

    invoke-direct {v3, p1}, Landroid/telecom/InCallAdapter;-><init>(Lcom/android/internal/telecom/IInCallAdapter;)V

    iget-object p1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-virtual {p1}, Landroid/telecom/InCallService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-direct {v2, v3, v0, p1}, Landroid/telecom/Phone;-><init>(Landroid/telecom/InCallAdapter;Ljava/lang/String;I)V

    invoke-static {v1, v2}, Landroid/telecom/InCallService;->-$$Nest$fputmPhone(Landroid/telecom/InCallService;Landroid/telecom/Phone;)V

    iget-object p1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {p1}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object p1

    iget-object v0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhoneListener(Landroid/telecom/InCallService;)Landroid/telecom/Phone$Listener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/telecom/Phone;->addListener(Landroid/telecom/Phone$Listener;)V

    iget-object p0, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {p0}, Landroid/telecom/InCallService;->-$$Nest$fgetmPhone(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/telecom/InCallService;->onPhoneCreated(Landroid/telecom/Phone;)V

    :cond_4
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

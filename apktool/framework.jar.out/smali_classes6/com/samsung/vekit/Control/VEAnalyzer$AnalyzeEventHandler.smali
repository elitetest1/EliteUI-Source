.class Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;
.super Landroid/os/Handler;
.source "VEAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vekit/Control/VEAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnalyzeEventHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/vekit/Control/VEAnalyzer;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Control/VEAnalyzer;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    if-ltz v0, :cond_c

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->values()[Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->values()[Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    aget-object v0, v0, v1

    sget-object v1, Lcom/samsung/vekit/Control/VEAnalyzer$1;->$SwitchMap$com$samsung$vekit$Control$VEAnalyzer$AnalyzeStatus:[I

    invoke-virtual {v0}, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-static {}, Lcom/samsung/vekit/Common/Type/AnalyzeType;->values()[Lcom/samsung/vekit/Common/Type/AnalyzeType;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    aget-object v0, v0, v1

    invoke-static {}, Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;->values()[Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg2:I

    aget-object p1, v1, p1

    iget-object v1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v1, v1, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    invoke-interface {p0, v0, p1}, Lcom/samsung/vekit/Listener/AnalyzeStatusListener;->onSolutionError(Lcom/samsung/vekit/Common/Type/AnalyzeType;Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;)V

    :cond_1
    return-void

    :pswitch_1
    invoke-static {}, Lcom/samsung/vekit/Common/Type/AnalyzeType;->values()[Lcom/samsung/vekit/Common/Type/AnalyzeType;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    aget-object p1, v0, p1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v0, v0, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v0, v0, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    invoke-interface {v0, p1}, Lcom/samsung/vekit/Listener/AnalyzeStatusListener;->onSolutionUnloaded(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V

    :cond_2
    iget-object p0, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->solutionLoadChecker:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_2
    invoke-static {}, Lcom/samsung/vekit/Common/Type/AnalyzeType;->values()[Lcom/samsung/vekit/Common/Type/AnalyzeType;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    aget-object p1, v0, p1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v0, v0, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v0, v0, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    invoke-interface {v0, p1}, Lcom/samsung/vekit/Listener/AnalyzeStatusListener;->onSolutionLoaded(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V

    :cond_3
    iget-object p0, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object p0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->solutionLoadChecker:Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {p1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {p1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->onAnalyzePaused()V

    :cond_4
    iget-object p1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object p1, p1, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object p1, p1, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    invoke-interface {p1}, Lcom/samsung/vekit/Listener/AnalyzeStatusListener;->onAnalyzePaused()V

    goto/16 :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {p1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {p1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->onAnalyzeCompleted()V

    :cond_5
    iget-object p1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object p1, p1, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object p1, p1, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    invoke-interface {p1}, Lcom/samsung/vekit/Listener/AnalyzeStatusListener;->onAnalyzeCompleted()V

    goto/16 :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {p1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {p1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->onAnalyzeFailed()V

    :cond_6
    iget-object p1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object p1, p1, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object p1, p1, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    invoke-interface {p1}, Lcom/samsung/vekit/Listener/AnalyzeStatusListener;->onAnalyzeFailed()V

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {p1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {p1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->onAnalyzeStopped()V

    :cond_7
    iget-object p1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object p1, p1, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object p1, p1, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    invoke-interface {p1}, Lcom/samsung/vekit/Listener/AnalyzeStatusListener;->onAnalyzeStopped()V

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object p1, p1, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object p1, p1, Lcom/samsung/vekit/Control/VEAnalyzer;->status:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    sget-object v1, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->INITIALIZED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    if-ne p1, v1, :cond_9

    iget-object p1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {p1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {p1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->onAnalyzeStarted()V

    :cond_8
    iget-object p1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object p1, p1, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    invoke-interface {p1}, Lcom/samsung/vekit/Listener/AnalyzeStatusListener;->onAnalyzeStarted()V

    goto :goto_0

    :cond_9
    iget-object p1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object p1, p1, Lcom/samsung/vekit/Control/VEAnalyzer;->status:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    sget-object v1, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;->PAUSED:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    if-ne p1, v1, :cond_b

    iget-object p1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {p1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {p1}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$100(Lcom/samsung/vekit/Control/VEAnalyzer;)Lcom/samsung/vekit/Common/Object/AnalyzeInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/AnalyzeInfo;->onAnalyzeResumed()V

    :cond_a
    iget-object p1, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object p1, p1, Lcom/samsung/vekit/Control/VEAnalyzer;->listener:Lcom/samsung/vekit/Listener/AnalyzeStatusListener;

    invoke-interface {p1}, Lcom/samsung/vekit/Listener/AnalyzeStatusListener;->onAnalyzeResumed()V

    :cond_b
    :goto_0
    iget-object p0, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEAnalyzer;->status:Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeStatus;

    return-void

    :cond_c
    :goto_1
    iget-object p0, p0, Lcom/samsung/vekit/Control/VEAnalyzer$AnalyzeEventHandler;->this$0:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-static {p0}, Lcom/samsung/vekit/Control/VEAnalyzer;->access$000(Lcom/samsung/vekit/Control/VEAnalyzer;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Analyzer Status is invalid : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x2
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

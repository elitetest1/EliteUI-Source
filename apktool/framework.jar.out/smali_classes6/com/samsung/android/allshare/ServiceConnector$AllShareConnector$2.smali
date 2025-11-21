.class Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$2;
.super Landroid/content/BroadcastReceiver;
.source "ServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$2;->this$0:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AllShareConnector"

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$2;->this$0:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    invoke-static {p0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->-$$Nest$fgetmSubscriberTag(Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : intent.getAction() == null!"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$2;->this$0:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    invoke-static {v0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->-$$Nest$fgetmConstData(Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->START_MESSAGE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$2;->this$0:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    invoke-static {v0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->-$$Nest$fgetmSubscriberTag(Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : onReceive AllShare Service Start message...^^"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$2;->this$0:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    invoke-virtual {p0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->connect()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$2;->this$0:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    invoke-static {v0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->-$$Nest$fgetmConstData(Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;->STOP_MESSAGE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$2;->this$0:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    invoke-static {v0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->-$$Nest$fgetmSubscriberTag(Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : onReceive AllShare Service Stop message...^^"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$2;->this$0:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    invoke-static {p0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->-$$Nest$monDisconnected(Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$2;->this$0:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    invoke-static {p0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->-$$Nest$fgetmSubscriberTag(Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : onReceive Unknown action - "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

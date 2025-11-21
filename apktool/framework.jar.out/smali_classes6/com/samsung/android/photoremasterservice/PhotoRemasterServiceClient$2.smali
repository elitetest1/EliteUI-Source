.class Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$2;
.super Ljava/lang/Object;
.source "PhotoRemasterServiceClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$2;->this$0:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$2;->this$0:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->-$$Nest$fputmServiceMessenger(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;Landroid/os/Messenger;)V

    iget-object p0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$2;->this$0:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-static {p0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->-$$Nest$fgetmServiceReturnValue(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    const-string p0, "PhotoRemasterServiceClient"

    const-string p1, "Service is connected(attached)."

    invoke-static {p0, p1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string p1, "Service is disconnected."

    const-string v0, "PhotoRemasterServiceClient"

    invoke-static {v0, p1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$2;->this$0:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->-$$Nest$fputmServiceMessenger(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;Landroid/os/Messenger;)V

    iget-object p1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$2;->this$0:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-static {p1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->-$$Nest$fgetmDisconnectionRequested(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Unexpected disconnection with PhotoRemaster Service! CancellationException will be thrown!"

    invoke-static {v0, p1}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$2;->this$0:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-static {p1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->-$$Nest$fgetmServiceReturnValue(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$2;->this$0:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-static {p1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->-$$Nest$fgetmServiceDisconnectionCallback(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;)Lcom/samsung/android/photoremasterservice/ServiceDisconnectionCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$2;->this$0:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-static {p0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->-$$Nest$fgetmServiceDisconnectionCallback(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;)Lcom/samsung/android/photoremasterservice/ServiceDisconnectionCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/photoremasterservice/ServiceDisconnectionCallback;->onServiceDisconnected()V

    :cond_1
    return-void
.end method

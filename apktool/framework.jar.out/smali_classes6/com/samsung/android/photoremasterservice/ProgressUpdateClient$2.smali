.class Lcom/samsung/android/photoremasterservice/ProgressUpdateClient$2;
.super Ljava/lang/Object;
.source "ProgressUpdateClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient$2;->this$0:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient$2;->this$0:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->-$$Nest$fputmServiceMessenger(Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;Landroid/os/Messenger;)V

    iget-object p0, p0, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient$2;->this$0:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-static {p0}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->-$$Nest$fgetmServiceReturnValue(Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    const-string p0, "ProgressUpdateClient"

    const-string p1, "Service is connected(attached)."

    invoke-static {p0, p1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "ProgressUpdateClient"

    const-string v0, "Service is disconnected."

    invoke-static {p1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient$2;->this$0:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->-$$Nest$fputmServiceMessenger(Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;Landroid/os/Messenger;)V

    return-void
.end method

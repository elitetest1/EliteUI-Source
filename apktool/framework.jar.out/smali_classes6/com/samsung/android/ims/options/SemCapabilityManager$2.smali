.class Lcom/samsung/android/ims/options/SemCapabilityManager$2;
.super Ljava/lang/Object;
.source "SemCapabilityManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ims/options/SemCapabilityManager;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/ims/options/SemCapabilityManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {p1}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetLOG_TAG(Lcom/samsung/android/ims/options/SemCapabilityManager;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Connected to SemCapabilityDiscoveryService."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {p2}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/options/SemImsCapabilityService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fputmImsCapabilityService(Lcom/samsung/android/ims/options/SemCapabilityManager;Lcom/samsung/android/ims/options/SemImsCapabilityService;)V

    iget-object p1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {p1}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetmListener(Lcom/samsung/android/ims/options/SemCapabilityManager;)Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {p1}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetmListener(Lcom/samsung/android/ims/options/SemCapabilityManager;)Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;->onConnected()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {p1}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetmQueuedCapabilityListener(Lcom/samsung/android/ims/options/SemCapabilityManager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {p1}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetmQueuedCapabilityListener(Lcom/samsung/android/ims/options/SemCapabilityManager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/ims/options/SemCapabilityListener;

    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-virtual {v0, p2}, Lcom/samsung/android/ims/options/SemCapabilityManager;->registerListener(Lcom/samsung/android/ims/options/SemCapabilityListener;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {p1}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetmQueuedCapabilityListener(Lcom/samsung/android/ims/options/SemCapabilityManager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    iget-object p0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {p0}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetLOG_TAG(Lcom/samsung/android/ims/options/SemCapabilityManager;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "registerListener failed. RemoteException: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {p1}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetLOG_TAG(Lcom/samsung/android/ims/options/SemCapabilityManager;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Disconnected to SemCapabilityDiscoveryService."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {p1}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetmListener(Lcom/samsung/android/ims/options/SemCapabilityManager;)Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {p1}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetmListener(Lcom/samsung/android/ims/options/SemCapabilityManager;)Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;->onDisconnected()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fputmImsCapabilityService(Lcom/samsung/android/ims/options/SemCapabilityManager;Lcom/samsung/android/ims/options/SemImsCapabilityService;)V

    return-void
.end method

.class Lcom/samsung/android/sume/core/service/RemoteServiceProxy$1;
.super Ljava/lang/Object;
.source "RemoteServiceProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sume/core/service/RemoteServiceProxy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/sume/core/service/RemoteServiceProxy;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/sume/core/service/RemoteServiceProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/service/RemoteServiceProxy$1;->this$0:Lcom/samsung/android/sume/core/service/RemoteServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/content/ServiceConnection;->onBindingDied(Landroid/content/ComponentName;)V

    return-void
.end method

.method public whitelist onNullBinding(Landroid/content/ComponentName;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/content/ServiceConnection;->onNullBinding(Landroid/content/ComponentName;)V

    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/sume/core/service/RemoteServiceProxy;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onServiceConnected E"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sume/core/service/RemoteServiceProxy$1;->this$0:Lcom/samsung/android/sume/core/service/RemoteServiceProxy;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/samsung/android/sume/core/service/RemoteServiceProxy;->access$102(Lcom/samsung/android/sume/core/service/RemoteServiceProxy;Landroid/os/Messenger;)Landroid/os/Messenger;

    const/16 p1, 0x389

    invoke-static {p1}, Lcom/samsung/android/sume/core/message/Request;->of(I)Lcom/samsung/android/sume/core/message/Request;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/sume/core/service/RemoteServiceProxy$1;->this$0:Lcom/samsung/android/sume/core/service/RemoteServiceProxy;

    invoke-static {p2}, Lcom/samsung/android/sume/core/service/RemoteServiceProxy;->access$100(Lcom/samsung/android/sume/core/service/RemoteServiceProxy;)Landroid/os/Messenger;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sume/core/message/Request;->setReceiver(Landroid/os/Messenger;)Lcom/samsung/android/sume/core/message/Request;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/sume/core/service/RemoteServiceProxy$1;->this$0:Lcom/samsung/android/sume/core/service/RemoteServiceProxy;

    invoke-static {p0}, Lcom/samsung/android/sume/core/service/RemoteServiceProxy;->access$200(Lcom/samsung/android/sume/core/service/RemoteServiceProxy;)Landroid/os/Messenger;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/sume/core/message/Request;->setResponseReceiver(Landroid/os/Messenger;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/message/Message;->post()Lcom/samsung/android/sume/core/message/Message;

    invoke-static {}, Lcom/samsung/android/sume/core/service/RemoteServiceProxy;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onServiceConnected X"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/sume/core/service/RemoteServiceProxy;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onServiceDisconnected E"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "service disconnected abnormally"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sume/core/service/RemoteServiceProxy$1;->this$0:Lcom/samsung/android/sume/core/service/RemoteServiceProxy;

    const/4 v0, -0x4

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/message/Response;->of(ILjava/lang/Exception;)Lcom/samsung/android/sume/core/message/Response;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sume/core/service/RemoteServiceProxy;->access$300(Lcom/samsung/android/sume/core/service/RemoteServiceProxy;Lcom/samsung/android/sume/core/message/Response;)V

    invoke-static {}, Lcom/samsung/android/sume/core/service/RemoteServiceProxy;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onServiceDisconnected X"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.class Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;
.super Ljava/lang/Object;
.source "DynamicSystemClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/image/DynamicSystemClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DynSystemServiceConnection"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/image/DynamicSystemClient;


# direct methods
.method private constructor blacklist <init>(Landroid/os/image/DynamicSystemClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;->this$0:Landroid/os/image/DynamicSystemClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/image/DynamicSystemClient;Landroid/os/image/DynamicSystemClient-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;-><init>(Landroid/os/image/DynamicSystemClient;)V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onServiceConnected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DynamicSystemClient"

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;->this$0:Landroid/os/image/DynamicSystemClient;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Landroid/os/image/DynamicSystemClient;->-$$Nest$fputmService(Landroid/os/image/DynamicSystemClient;Landroid/os/Messenger;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    :try_start_0
    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;->this$0:Landroid/os/image/DynamicSystemClient;

    invoke-static {p2}, Landroid/os/image/DynamicSystemClient;->-$$Nest$fgetmMessenger(Landroid/os/image/DynamicSystemClient;)Landroid/os/Messenger;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object p2, p0, Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;->this$0:Landroid/os/image/DynamicSystemClient;

    invoke-static {p2}, Landroid/os/image/DynamicSystemClient;->-$$Nest$fgetmService(Landroid/os/image/DynamicSystemClient;)Landroid/os/Messenger;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v7, p1

    const-string p1, "Unable to get status from installation service"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;->this$0:Landroid/os/image/DynamicSystemClient;

    const/4 v4, 0x5

    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v2 .. v7}, Landroid/os/image/DynamicSystemClient;->-$$Nest$mnotifyOnStatusChangedListener(Landroid/os/image/DynamicSystemClient;IIJLjava/lang/Throwable;)V

    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onServiceDisconnected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DynamicSystemClient"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;->this$0:Landroid/os/image/DynamicSystemClient;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/os/image/DynamicSystemClient;->-$$Nest$fputmService(Landroid/os/image/DynamicSystemClient;Landroid/os/Messenger;)V

    return-void
.end method

.class Landroid/mtp/MtpDatabase$4;
.super Ljava/lang/Object;
.source "MtpDatabase.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/mtp/MtpDatabase;->initializeSerivce()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/mtp/MtpDatabase;


# direct methods
.method constructor blacklist <init>(Landroid/mtp/MtpDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/mtp/MtpDatabase$4;->this$0:Landroid/mtp/MtpDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Landroid/mtp/MtpDatabase$4;->this$0:Landroid/mtp/MtpDatabase;

    invoke-static {p1}, Landroid/mtp/MtpDatabase;->-$$Nest$fgetmService(Landroid/mtp/MtpDatabase;)[Landroid/os/Messenger;

    move-result-object p1

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    const/4 p2, 0x1

    aput-object v0, p1, p2

    invoke-static {}, Landroid/mtp/MtpDatabase;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onServiceConnected()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :try_start_0
    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Landroid/mtp/MtpDatabase$4;->this$0:Landroid/mtp/MtpDatabase;

    invoke-static {v0}, Landroid/mtp/MtpDatabase;->-$$Nest$fgetmMessenger(Landroid/mtp/MtpDatabase;)Landroid/os/Messenger;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object p0, p0, Landroid/mtp/MtpDatabase$4;->this$0:Landroid/mtp/MtpDatabase;

    invoke-static {p0}, Landroid/mtp/MtpDatabase;->-$$Nest$fgetmService(Landroid/mtp/MtpDatabase;)[Landroid/os/Messenger;

    move-result-object p0

    aget-object p0, p0, p2

    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Landroid/mtp/MtpDatabase;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "say hello exception"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    invoke-static {}, Landroid/mtp/MtpDatabase;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onServiceDisconnected()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/mtp/MtpDatabase$4;->this$0:Landroid/mtp/MtpDatabase;

    invoke-static {p0}, Landroid/mtp/MtpDatabase;->-$$Nest$fgetmService(Landroid/mtp/MtpDatabase;)[Landroid/os/Messenger;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    aput-object v0, p0, p1

    return-void
.end method

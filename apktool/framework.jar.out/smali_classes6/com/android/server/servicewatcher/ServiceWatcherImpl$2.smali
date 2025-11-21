.class Lcom/android/server/servicewatcher/ServiceWatcherImpl$2;
.super Landroid/os/Handler;
.source "ServiceWatcherImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/servicewatcher/ServiceWatcherImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;


# direct methods
.method constructor blacklist <init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$2;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xcd

    if-ne p1, v0, :cond_1

    sget-boolean p1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->D:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$2;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    iget-object p1, p1, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    const-string v1, "location proxy service reconnection timeout"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$2;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    invoke-static {p0, v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->-$$Nest$msendPorxyConnectionInfo(Lcom/android/server/servicewatcher/ServiceWatcherImpl;I)V

    :cond_1
    return-void
.end method

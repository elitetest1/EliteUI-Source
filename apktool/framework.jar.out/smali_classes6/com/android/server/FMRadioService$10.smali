.class Lcom/android/server/FMRadioService$10;
.super Landroid/os/Handler;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist currentVolume:J

.field final synthetic blacklist this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor blacklist <init>(Lcom/android/server/FMRadioService;Landroid/os/Looper;)V
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

    iput-object p1, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/server/FMRadioService$10;->currentVolume:J

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mHandler(g.what="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {p1}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsOn(Lcom/android/server/FMRadioService;)Z

    move-result p1

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_1

    iget-wide v3, p0, Lcom/android/server/FMRadioService$10;->currentVolume:J

    iget-object p1, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {p1}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmCurrentResumeVol(Lcom/android/server/FMRadioService;)J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-gez p1, :cond_0

    iget-wide v1, p0, Lcom/android/server/FMRadioService$10;->currentVolume:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/FMRadioService$10;->currentVolume:J

    iget-object p1, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {p1, v1, v2}, Lcom/android/server/FMRadioService;->setVolume(J)V

    iget-object p0, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    const-wide/16 v1, 0x64

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/FMRadioService;->-$$Nest$mqueueUpdate(Lcom/android/server/FMRadioService;IJ)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {p1}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmResumeVol(Lcom/android/server/FMRadioService;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/FMRadioService$10;->currentVolume:J

    iget-object p1, p0, Lcom/android/server/FMRadioService$10;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {p1, v3, v4}, Lcom/android/server/FMRadioService;->setVolume(J)V

    iput-wide v1, p0, Lcom/android/server/FMRadioService$10;->currentVolume:J

    return-void

    :cond_1
    iput-wide v1, p0, Lcom/android/server/FMRadioService$10;->currentVolume:J

    :cond_2
    return-void
.end method

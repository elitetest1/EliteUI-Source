.class Landroid/media/tv/tuner/Tuner$1;
.super Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;
.source "Tuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/Tuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/tuner/Tuner;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/tuner/Tuner;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/tv/tuner/Tuner$1;->this$0:Landroid/media/tv/tuner/Tuner;

    invoke-direct {p0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onReclaimResources()V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner$1;->this$0:Landroid/media/tv/tuner/Tuner;

    invoke-static {v0}, Landroid/media/tv/tuner/Tuner;->-$$Nest$fgetmFrontend(Landroid/media/tv/tuner/Tuner;)Landroid/media/tv/tuner/Tuner$Frontend;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner$1;->this$0:Landroid/media/tv/tuner/Tuner;

    invoke-static {v0}, Landroid/media/tv/tuner/Tuner;->-$$Nest$fgetmUserId(Landroid/media/tv/tuner/Tuner;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x114

    invoke-static {v2, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    :cond_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner$1;->this$0:Landroid/media/tv/tuner/Tuner;

    invoke-static {v0}, Landroid/media/tv/tuner/Tuner;->-$$Nest$mreleaseAll(Landroid/media/tv/tuner/Tuner;)V

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner$1;->this$0:Landroid/media/tv/tuner/Tuner;

    invoke-static {v0}, Landroid/media/tv/tuner/Tuner;->-$$Nest$fgetmHandler(Landroid/media/tv/tuner/Tuner;)Landroid/media/tv/tuner/Tuner$EventHandler;

    move-result-object v0

    iget-object p0, p0, Landroid/media/tv/tuner/Tuner$1;->this$0:Landroid/media/tv/tuner/Tuner;

    invoke-static {p0}, Landroid/media/tv/tuner/Tuner;->-$$Nest$fgetmHandler(Landroid/media/tv/tuner/Tuner;)Landroid/media/tv/tuner/Tuner$EventHandler;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/media/tv/tuner/Tuner$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/media/tv/tuner/Tuner$EventHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

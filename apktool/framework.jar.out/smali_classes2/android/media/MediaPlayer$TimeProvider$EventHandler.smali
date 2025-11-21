.class Landroid/media/MediaPlayer$TimeProvider$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer$TimeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaPlayer$TimeProvider;


# direct methods
.method public constructor blacklist <init>(Landroid/media/MediaPlayer$TimeProvider;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$0:Landroid/media/MediaPlayer$TimeProvider;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$0:Landroid/media/MediaPlayer$TimeProvider;

    invoke-static {p0}, Landroid/media/MediaPlayer$TimeProvider;->-$$Nest$mnotifySeek(Landroid/media/MediaPlayer$TimeProvider;)V

    return-void

    :cond_1
    iget-object p0, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$0:Landroid/media/MediaPlayer$TimeProvider;

    invoke-static {p0}, Landroid/media/MediaPlayer$TimeProvider;->-$$Nest$mnotifyStop(Landroid/media/MediaPlayer$TimeProvider;)V

    return-void

    :cond_2
    iget-object p0, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$0:Landroid/media/MediaPlayer$TimeProvider;

    invoke-static {p0, v2}, Landroid/media/MediaPlayer$TimeProvider;->-$$Nest$mnotifyTimedEvent(Landroid/media/MediaPlayer$TimeProvider;Z)V

    return-void

    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_5

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$0:Landroid/media/MediaPlayer$TimeProvider;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    invoke-static {p0, p1}, Landroid/media/MediaPlayer$TimeProvider;->-$$Nest$mnotifyTrackData(Landroid/media/MediaPlayer$TimeProvider;Landroid/util/Pair;)V

    :cond_5
    :goto_0
    return-void
.end method

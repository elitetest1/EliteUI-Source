.class final Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;
.super Landroid/os/Handler;
.source "TvInteractiveAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/TvInteractiveAppManager$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputEventHandler"
.end annotation


# static fields
.field public static final blacklist MSG_FLUSH_INPUT_EVENT:I = 0x3

.field public static final blacklist MSG_SEND_INPUT_EVENT:I = 0x1

.field public static final blacklist MSG_TIMEOUT_INPUT_EVENT:I = 0x2


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Landroid/os/Looper;)V
    .locals 1
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

    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1, v3, v3}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->finishedInputEvent(IZZ)V

    return-void

    :cond_1
    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1, v3, v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->finishedInputEvent(IZZ)V

    return-void

    :cond_2
    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;

    invoke-static {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->-$$Nest$msendInputEventAndReportResultOnMainLooper(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;)V

    return-void
.end method

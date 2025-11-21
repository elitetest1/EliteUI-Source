.class Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$1;
.super Ljava/lang/Object;
.source "RemoteComposeCanvas.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist doFrame(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    const-wide/32 v1, 0xf4240

    div-long/2addr p1, v1

    iput-wide p1, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->currentTime:J

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    iget p2, p2, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:I

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setDebug(I)V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->postInvalidateOnAnimation()V

    return-void
.end method

.class Landroid/media/RemoteControlClient$1;
.super Landroid/media/session/MediaSession$Callback;
.source "RemoteControlClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteControlClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/RemoteControlClient;


# direct methods
.method constructor blacklist <init>(Landroid/media/RemoteControlClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onSeekTo(J)V
    .locals 1

    iget-object p0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {p0}, Landroid/media/RemoteControlClient;->-$$Nest$fgetmCurrentClientGenId(Landroid/media/RemoteControlClient;)I

    move-result v0

    invoke-static {p0, v0, p1, p2}, Landroid/media/RemoteControlClient;->-$$Nest$monSeekTo(Landroid/media/RemoteControlClient;IJ)V

    return-void
.end method

.method public whitelist onSetRating(Landroid/media/Rating;)V
    .locals 2

    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->-$$Nest$fgetmTransportControlFlags(Landroid/media/RemoteControlClient;)I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {p0}, Landroid/media/RemoteControlClient;->-$$Nest$fgetmCurrentClientGenId(Landroid/media/RemoteControlClient;)I

    move-result v0

    const v1, 0x10000001

    invoke-static {p0, v0, v1, p1}, Landroid/media/RemoteControlClient;->-$$Nest$monUpdateMetadata(Landroid/media/RemoteControlClient;IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

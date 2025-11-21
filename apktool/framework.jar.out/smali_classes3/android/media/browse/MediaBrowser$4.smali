.class Landroid/media/browse/MediaBrowser$4;
.super Landroid/os/ResultReceiver;
.source "MediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/browse/MediaBrowser;->getItem(Ljava/lang/String;Landroid/media/browse/MediaBrowser$ItemCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/browse/MediaBrowser;

.field final synthetic blacklist val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

.field final synthetic blacklist val$mediaId:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/media/browse/MediaBrowser;Landroid/os/Handler;Landroid/media/browse/MediaBrowser$ItemCallback;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/browse/MediaBrowser$4;->this$0:Landroid/media/browse/MediaBrowser;

    iput-object p3, p0, Landroid/media/browse/MediaBrowser$4;->val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

    iput-object p4, p0, Landroid/media/browse/MediaBrowser$4;->val$mediaId:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/media/browse/MediaBrowser$4;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    const-string/jumbo p1, "media_item"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_2

    instance-of p2, p1, Landroid/media/browse/MediaBrowser$MediaItem;

    if-nez p2, :cond_2

    iget-object p1, p0, Landroid/media/browse/MediaBrowser$4;->val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

    iget-object p0, p0, Landroid/media/browse/MediaBrowser$4;->val$mediaId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/media/browse/MediaBrowser$ItemCallback;->onError(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p0, p0, Landroid/media/browse/MediaBrowser$4;->val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

    check-cast p1, Landroid/media/browse/MediaBrowser$MediaItem;

    invoke-virtual {p0, p1}, Landroid/media/browse/MediaBrowser$ItemCallback;->onItemLoaded(Landroid/media/browse/MediaBrowser$MediaItem;)V

    return-void

    :cond_3
    :goto_0
    iget-object p1, p0, Landroid/media/browse/MediaBrowser$4;->val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

    iget-object p0, p0, Landroid/media/browse/MediaBrowser$4;->val$mediaId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/media/browse/MediaBrowser$ItemCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

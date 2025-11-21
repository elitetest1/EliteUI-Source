.class public abstract Landroid/media/session/MediaSession$Callback;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# instance fields
.field private greylist-max-o mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

.field private greylist-max-o mMediaPlayPauseKeyPending:Z

.field private greylist-max-o mSession:Landroid/media/session/MediaSession;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmHandler(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession$CallbackMessageHandler;)V
    .locals 0

    iput-object p1, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSession(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession;)V
    .locals 0

    iput-object p1, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleMediaPlayPauseKeySingleTapIfPending(Landroid/media/session/MediaSession$Callback;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;->handleMediaPlayPauseKeySingleTapIfPending()V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private greylist-max-o handleMediaPlayPauseKeySingleTapIfPending()V
    .locals 10

    iget-boolean v0, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    iget-object v1, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession$CallbackMessageHandler;->removeMessages(I)V

    iget-object v1, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    invoke-static {v1}, Landroid/media/session/MediaSession;->-$$Nest$fgetmPlaybackState(Landroid/media/session/MediaSession;)Landroid/media/session/PlaybackState;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_1

    move-wide v4, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v4

    :goto_0
    const/4 v6, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    const/4 v7, 0x3

    if-ne v1, v7, :cond_2

    move v1, v6

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    const-wide/16 v7, 0x204

    and-long/2addr v7, v4

    cmp-long v7, v7, v2

    if-eqz v7, :cond_3

    move v7, v6

    goto :goto_2

    :cond_3
    move v7, v0

    :goto_2
    const-wide/16 v8, 0x202

    and-long/2addr v4, v8

    cmp-long v2, v4, v2

    if-eqz v2, :cond_4

    move v0, v6

    :cond_4
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPause()V

    return-void

    :cond_5
    if-nez v1, :cond_6

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public whitelist onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    return-void
.end method

.method public whitelist onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public whitelist onFastForward()V
    .locals 0

    return-void
.end method

.method public whitelist onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 11

    iget-object v0, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    if-eqz v0, :cond_7

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "android.intent.extra.KEY_EVENT"

    const-class v2, Landroid/view/KeyEvent;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    invoke-static {v2}, Landroid/media/session/MediaSession;->-$$Nest$fgetmPlaybackState(Landroid/media/session/MediaSession;)Landroid/media/session/PlaybackState;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v5

    :goto_0
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v7, 0x4f

    const-wide/16 v8, 0x20

    const/4 v10, 0x1

    if-eq v2, v7, :cond_3

    const/16 v7, 0x55

    if-eq v2, v7, :cond_3

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;->handleMediaPlayPauseKeySingleTapIfPending()V

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-wide/16 v7, 0x40

    and-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onFastForward()V

    return v10

    :pswitch_1
    const-wide/16 v7, 0x8

    and-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onRewind()V

    return v10

    :pswitch_2
    const-wide/16 v7, 0x10

    and-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToPrevious()V

    return v10

    :pswitch_3
    and-long/2addr v5, v8

    cmp-long p1, v5, v3

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToNext()V

    return v10

    :pswitch_4
    const-wide/16 v7, 0x1

    and-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onStop()V

    return v10

    :cond_1
    const-wide/16 v7, 0x2

    and-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPause()V

    return v10

    :cond_2
    const-wide/16 v7, 0x4

    and-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    return v10

    :cond_3
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;->handleMediaPlayPauseKeySingleTapIfPending()V

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    if-eqz v0, :cond_5

    iget-object p1, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSession$CallbackMessageHandler;->removeMessages(I)V

    iput-boolean v1, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    and-long v0, v5, v8

    cmp-long p1, v0, v3

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToNext()V

    goto :goto_1

    :cond_5
    iput-boolean v10, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    iget-object p0, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {p0}, Landroid/media/session/MediaSession;->getCurrentControllerInfo()Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/media/session/MediaSession;->dispatchMediaButtonDelayed(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/content/Intent;J)V

    :cond_6
    :goto_1
    return v10

    :cond_7
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x56
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist onPause()V
    .locals 0

    return-void
.end method

.method public whitelist onPlay()V
    .locals 0

    return-void
.end method

.method public whitelist onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public whitelist onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public whitelist onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public whitelist onPrepare()V
    .locals 0

    return-void
.end method

.method public whitelist onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public whitelist onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public whitelist onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public whitelist onRewind()V
    .locals 0

    return-void
.end method

.method public whitelist onSeekTo(J)V
    .locals 0

    return-void
.end method

.method public whitelist onSetPlaybackSpeed(F)V
    .locals 0

    return-void
.end method

.method public whitelist onSetRating(Landroid/media/Rating;)V
    .locals 0

    return-void
.end method

.method public whitelist onSkipToNext()V
    .locals 0

    return-void
.end method

.method public whitelist onSkipToPrevious()V
    .locals 0

    return-void
.end method

.method public whitelist onSkipToQueueItem(J)V
    .locals 0

    return-void
.end method

.method public whitelist onStop()V
    .locals 0

    return-void
.end method

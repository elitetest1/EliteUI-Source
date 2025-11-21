.class Landroid/media/musicrecognition/MusicRecognitionService$1$1;
.super Ljava/lang/Object;
.source "MusicRecognitionService.java"

# interfaces
.implements Landroid/media/musicrecognition/MusicRecognitionService$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/musicrecognition/MusicRecognitionService$1;->onAudioStreamStarted(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/media/musicrecognition/IMusicRecognitionServiceCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/media/musicrecognition/IMusicRecognitionServiceCallback;


# direct methods
.method constructor blacklist <init>(Landroid/media/musicrecognition/MusicRecognitionService$1;Landroid/media/musicrecognition/IMusicRecognitionServiceCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Landroid/media/musicrecognition/MusicRecognitionService$1$1;->val$callback:Landroid/media/musicrecognition/IMusicRecognitionServiceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onRecognitionFailed(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/media/musicrecognition/MusicRecognitionService$1$1;->val$callback:Landroid/media/musicrecognition/IMusicRecognitionServiceCallback;

    invoke-interface {p0, p1}, Landroid/media/musicrecognition/IMusicRecognitionServiceCallback;->onRecognitionFailed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist onRecognitionSucceeded(Landroid/media/MediaMetadata;Landroid/os/Bundle;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/media/musicrecognition/MusicRecognitionService$1$1;->val$callback:Landroid/media/musicrecognition/IMusicRecognitionServiceCallback;

    invoke-interface {p0, p1, p2}, Landroid/media/musicrecognition/IMusicRecognitionServiceCallback;->onRecognitionSucceeded(Landroid/media/MediaMetadata;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.class public abstract Landroid/media/musicrecognition/MusicRecognitionService;
.super Landroid/app/Service;
.source "MusicRecognitionService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/musicrecognition/MusicRecognitionService$Callback;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_MUSIC_SEARCH_LOOKUP:Ljava/lang/String; = "android.service.musicrecognition.MUSIC_RECOGNITION"

.field private static final blacklist TAG:Ljava/lang/String; = "MusicRecognitionService"


# instance fields
.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mServiceInterface:Landroid/media/musicrecognition/IMusicRecognitionService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/media/musicrecognition/MusicRecognitionService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/media/musicrecognition/MusicRecognitionService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/media/musicrecognition/MusicRecognitionService$1;

    invoke-direct {v0, p0}, Landroid/media/musicrecognition/MusicRecognitionService$1;-><init>(Landroid/media/musicrecognition/MusicRecognitionService;)V

    iput-object v0, p0, Landroid/media/musicrecognition/MusicRecognitionService;->mServiceInterface:Landroid/media/musicrecognition/IMusicRecognitionService;

    return-void
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "android.service.musicrecognition.MUSIC_RECOGNITION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/media/musicrecognition/MusicRecognitionService;->mServiceInterface:Landroid/media/musicrecognition/IMusicRecognitionService;

    invoke-interface {p0}, Landroid/media/musicrecognition/IMusicRecognitionService;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Landroid/media/musicrecognition/MusicRecognitionService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tried to bind to wrong intent (should be android.service.musicrecognition.MUSIC_RECOGNITION: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/media/musicrecognition/MusicRecognitionService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public abstract whitelist onRecognize(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/media/musicrecognition/MusicRecognitionService$Callback;)V
.end method

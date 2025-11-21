.class Landroid/media/AudioManager$1;
.super Landroid/os/IpcDataCache$QueryHandler;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/IpcDataCache$QueryHandler<",
        "Landroid/media/AudioManager$VolumeCacheQuery;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/IpcDataCache$QueryHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/media/AudioManager$VolumeCacheQuery;)Ljava/lang/Integer;
    .locals 3

    const-string p0, "Not a valid volume cache query: "

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    :try_start_0
    invoke-static {p1}, Landroid/media/AudioManager$VolumeCacheQuery;->-$$Nest$fgetqueryCommand(Landroid/media/AudioManager$VolumeCacheQuery;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const-string v0, "AudioManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Landroid/media/AudioManager$VolumeCacheQuery;->-$$Nest$fgetstream(Landroid/media/AudioManager$VolumeCacheQuery;)I

    move-result p0

    invoke-interface {v0, p0}, Landroid/media/IAudioService;->getStreamVolume(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1}, Landroid/media/AudioManager$VolumeCacheQuery;->-$$Nest$fgetstream(Landroid/media/AudioManager$VolumeCacheQuery;)I

    move-result p0

    invoke-interface {v0, p0}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p1}, Landroid/media/AudioManager$VolumeCacheQuery;->-$$Nest$fgetstream(Landroid/media/AudioManager$VolumeCacheQuery;)I

    move-result p0

    invoke-interface {v0, p0}, Landroid/media/IAudioService;->getStreamMinVolume(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic blacklist apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/media/AudioManager$VolumeCacheQuery;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager$1;->apply(Landroid/media/AudioManager$VolumeCacheQuery;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.class public abstract Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService;
.super Landroid/app/Service;
.source "WallpaperEffectsGenerationService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.wallpapereffectsgeneration.WallpaperEffectsGenerationService"

.field private static final blacklist TAG:Ljava/lang/String; = "WallpaperEffectsGenerationService"


# instance fields
.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mInterface:Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;

.field private blacklist mService:Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService$1;

    invoke-direct {v0, p0}, Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService$1;-><init>(Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService;)V

    iput-object v0, p0, Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService;->mInterface:Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;

    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "android.service.wallpapereffectsgeneration.WallpaperEffectsGenerationService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService;->mInterface:Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;

    invoke-interface {p0}, Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Tried to bind to wrong intent (should be android.service.wallpapereffectsgeneration.WallpaperEffectsGenerationService: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WallpaperEffectsGenerationService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

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

    iput-object v0, p0, Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "wallpaper_effects_generation"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager;

    move-result-object v0

    iput-object v0, p0, Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService;->mService:Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager;

    return-void
.end method

.method public abstract whitelist onGenerateCinematicEffect(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;)V
.end method

.method public final whitelist returnCinematicEffectResponse(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/service/wallpapereffectsgeneration/WallpaperEffectsGenerationService;->mService:Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager;

    invoke-interface {p0, p1}, Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager;->returnCinematicEffectResponse(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

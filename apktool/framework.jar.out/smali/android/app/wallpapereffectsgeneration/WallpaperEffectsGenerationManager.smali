.class public final Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager;
.super Ljava/lang/Object;
.source "WallpaperEffectsGenerationManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper;,
        Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListener;
    }
.end annotation


# instance fields
.field private final blacklist mService:Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager;


# direct methods
.method public constructor blacklist <init>(Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager;->mService:Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager;

    return-void
.end method


# virtual methods
.method public whitelist generateCinematicEffect(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;Ljava/util/concurrent/Executor;Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListener;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object p0, p0, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager;->mService:Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager;

    new-instance v0, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper;

    invoke-direct {v0, p3, p2}, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListenerWrapper;-><init>(Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager$CinematicEffectListener;Ljava/util/concurrent/Executor;)V

    invoke-interface {p0, p1, v0}, Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager;->generateCinematicEffect(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

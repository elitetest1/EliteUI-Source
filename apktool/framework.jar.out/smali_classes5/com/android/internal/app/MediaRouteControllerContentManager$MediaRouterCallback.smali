.class final Lcom/android/internal/app/MediaRouteControllerContentManager$MediaRouterCallback;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "MediaRouteControllerContentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MediaRouteControllerContentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/MediaRouteControllerContentManager;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/app/MediaRouteControllerContentManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/app/MediaRouteControllerContentManager;Lcom/android/internal/app/MediaRouteControllerContentManager-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/MediaRouteControllerContentManager$MediaRouterCallback;-><init>(Lcom/android/internal/app/MediaRouteControllerContentManager;)V

    return-void
.end method


# virtual methods
.method public whitelist onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->update()V

    return-void
.end method

.method public whitelist onRouteGrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->update()V

    return-void
.end method

.method public whitelist onRouteUngrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->update()V

    return-void
.end method

.method public whitelist onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->update()V

    return-void
.end method

.method public whitelist onRouteVolumeChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    iget-object p1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-static {p1}, Lcom/android/internal/app/MediaRouteControllerContentManager;->-$$Nest$fgetmRoute(Lcom/android/internal/app/MediaRouteControllerContentManager;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object p1

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-static {p0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->-$$Nest$mupdateVolume(Lcom/android/internal/app/MediaRouteControllerContentManager;)V

    :cond_0
    return-void
.end method

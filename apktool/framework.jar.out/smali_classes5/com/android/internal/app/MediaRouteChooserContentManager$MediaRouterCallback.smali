.class final Lcom/android/internal/app/MediaRouteChooserContentManager$MediaRouterCallback;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "MediaRouteChooserContentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MediaRouteChooserContentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/MediaRouteChooserContentManager;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/app/MediaRouteChooserContentManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserContentManager$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserContentManager;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/app/MediaRouteChooserContentManager;Lcom/android/internal/app/MediaRouteChooserContentManager-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/MediaRouteChooserContentManager$MediaRouterCallback;-><init>(Lcom/android/internal/app/MediaRouteChooserContentManager;)V

    return-void
.end method


# virtual methods
.method public whitelist onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserContentManager;

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserContentManager;->refreshRoutes()V

    return-void
.end method

.method public whitelist onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserContentManager;

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserContentManager;->refreshRoutes()V

    return-void
.end method

.method public whitelist onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserContentManager;

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserContentManager;->refreshRoutes()V

    return-void
.end method

.method public whitelist onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserContentManager;

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mDelegate:Lcom/android/internal/app/MediaRouteChooserContentManager$Delegate;

    invoke-interface {p0}, Lcom/android/internal/app/MediaRouteChooserContentManager$Delegate;->dismissView()V

    return-void
.end method

.class public Lcom/android/internal/app/MediaRouteChooserContentManager;
.super Ljava/lang/Object;
.source "MediaRouteChooserContentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/MediaRouteChooserContentManager$Delegate;,
        Lcom/android/internal/app/MediaRouteChooserContentManager$MediaRouterCallback;,
        Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;,
        Lcom/android/internal/app/MediaRouteChooserContentManager$RouteComparator;
    }
.end annotation


# instance fields
.field private blacklist mAdapter:Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;

.field private blacklist mAttachedToWindow:Z

.field private final blacklist mCallback:Lcom/android/internal/app/MediaRouteChooserContentManager$MediaRouterCallback;

.field blacklist mContext:Landroid/content/Context;

.field blacklist mDelegate:Lcom/android/internal/app/MediaRouteChooserContentManager$Delegate;

.field private blacklist mRouteTypes:I

.field private final blacklist mRouter:Landroid/media/MediaRouter;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRouter(Lcom/android/internal/app/MediaRouteChooserContentManager;)Landroid/media/MediaRouter;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mRouter:Landroid/media/MediaRouter;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/app/MediaRouteChooserContentManager$Delegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mDelegate:Lcom/android/internal/app/MediaRouteChooserContentManager$Delegate;

    const-class p2, Landroid/media/MediaRouter;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaRouter;

    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mRouter:Landroid/media/MediaRouter;

    new-instance p1, Lcom/android/internal/app/MediaRouteChooserContentManager$MediaRouterCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/internal/app/MediaRouteChooserContentManager$MediaRouterCallback;-><init>(Lcom/android/internal/app/MediaRouteChooserContentManager;Lcom/android/internal/app/MediaRouteChooserContentManager-IA;)V

    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mCallback:Lcom/android/internal/app/MediaRouteChooserContentManager$MediaRouterCallback;

    new-instance p1, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;

    iget-object p2, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;-><init>(Lcom/android/internal/app/MediaRouteChooserContentManager;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mAdapter:Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;

    return-void
.end method


# virtual methods
.method public blacklist bindViews(Landroid/view/View;)V
    .locals 3

    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020425

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mAdapter:Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mAdapter:Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mDelegate:Lcom/android/internal/app/MediaRouteChooserContentManager$Delegate;

    invoke-interface {p0}, Lcom/android/internal/app/MediaRouteChooserContentManager$Delegate;->showProgressBarWhenEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const p0, 0x1020426

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 p1, 0x11

    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public blacklist getRouteTypes()I
    .locals 0

    iget p0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mRouteTypes:I

    return p0
.end method

.method public blacklist onAttachedToWindow()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mAttachedToWindow:Z

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mRouter:Landroid/media/MediaRouter;

    iget v2, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mRouteTypes:I

    iget-object v3, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mCallback:Lcom/android/internal/app/MediaRouteChooserContentManager$MediaRouterCallback;

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserContentManager;->refreshRoutes()V

    return-void
.end method

.method public blacklist onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mAttachedToWindow:Z

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mRouter:Landroid/media/MediaRouter;

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mCallback:Lcom/android/internal/app/MediaRouteChooserContentManager$MediaRouterCallback;

    invoke-virtual {v0, p0}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    return-void
.end method

.method public blacklist onFilterRoute(Landroid/media/MediaRouter$RouteInfo;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mRouteTypes:I

    invoke-virtual {p1, p0}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist refreshRoutes()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mAttachedToWindow:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mAdapter:Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;->update()V

    :cond_0
    return-void
.end method

.method public blacklist setRouteTypes(I)V
    .locals 3

    iget v0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mRouteTypes:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mRouteTypes:I

    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mAttachedToWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mCallback:Lcom/android/internal/app/MediaRouteChooserContentManager$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mCallback:Lcom/android/internal/app/MediaRouteChooserContentManager$MediaRouterCallback;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserContentManager;->refreshRoutes()V

    :cond_1
    return-void
.end method

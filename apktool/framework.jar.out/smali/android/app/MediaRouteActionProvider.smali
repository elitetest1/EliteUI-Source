.class public Landroid/app/MediaRouteActionProvider;
.super Landroid/view/ActionProvider;
.source "MediaRouteActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/MediaRouteActionProvider$MediaRouterCallback;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaRouteActionProvider"


# instance fields
.field private greylist-max-o mButton:Landroid/app/MediaRouteButton;

.field private final greylist-max-o mCallback:Landroid/app/MediaRouteActionProvider$MediaRouterCallback;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mExtendedSettingsListener:Landroid/view/View$OnClickListener;

.field private greylist-max-o mRouteTypes:I

.field private final greylist-max-o mRouter:Landroid/media/MediaRouter;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mrefreshRoute(Landroid/app/MediaRouteActionProvider;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/MediaRouteActionProvider;->refreshRoute()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ActionProvider;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroid/app/MediaRouteActionProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "media_router"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaRouter;

    iput-object p1, p0, Landroid/app/MediaRouteActionProvider;->mRouter:Landroid/media/MediaRouter;

    new-instance p1, Landroid/app/MediaRouteActionProvider$MediaRouterCallback;

    invoke-direct {p1, p0}, Landroid/app/MediaRouteActionProvider$MediaRouterCallback;-><init>(Landroid/app/MediaRouteActionProvider;)V

    iput-object p1, p0, Landroid/app/MediaRouteActionProvider;->mCallback:Landroid/app/MediaRouteActionProvider$MediaRouterCallback;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/MediaRouteActionProvider;->setRouteTypes(I)V

    return-void
.end method

.method private greylist-max-o refreshRoute()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/MediaRouteActionProvider;->refreshVisibility()V

    return-void
.end method


# virtual methods
.method public whitelist isVisible()Z
    .locals 2

    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mRouter:Landroid/media/MediaRouter;

    iget p0, p0, Landroid/app/MediaRouteActionProvider;->mRouteTypes:I

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/media/MediaRouter;->isRouteAvailable(II)Z

    move-result p0

    return p0
.end method

.method public whitelist onCreateActionView()Landroid/view/View;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Use onCreateActionView(MenuItem) instead."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 3

    iget-object p1, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    if-eqz p1, :cond_0

    const-string p1, "MediaRouteActionProvider"

    const-string/jumbo v0, "onCreateActionView: this ActionProvider is already associated with a menu item. Don\'t reuse MediaRouteActionProvider instances! Abandoning the old one..."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p1, Landroid/app/MediaRouteButton;

    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/MediaRouteButton;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    iget v0, p0, Landroid/app/MediaRouteActionProvider;->mRouteTypes:I

    invoke-virtual {p1, v0}, Landroid/app/MediaRouteButton;->setRouteTypes(I)V

    iget-object p1, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mExtendedSettingsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/app/MediaRouteButton;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/app/MediaRouteButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    return-object p0
.end method

.method public whitelist onPerformDefaultAction()Z
    .locals 0

    iget-object p0, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->showDialogInternal()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist overridesItemVisibility()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public whitelist setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/app/MediaRouteActionProvider;->mExtendedSettingsListener:Landroid/view/View$OnClickListener;

    iget-object p0, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/MediaRouteButton;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public whitelist setRouteTypes(I)V
    .locals 3

    iget v0, p0, Landroid/app/MediaRouteActionProvider;->mRouteTypes:I

    if-eq v0, p1, :cond_2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Landroid/app/MediaRouteActionProvider;->mCallback:Landroid/app/MediaRouteActionProvider$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    :cond_0
    iput p1, p0, Landroid/app/MediaRouteActionProvider;->mRouteTypes:I

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Landroid/app/MediaRouteActionProvider;->mCallback:Landroid/app/MediaRouteActionProvider$MediaRouterCallback;

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    :cond_1
    invoke-direct {p0}, Landroid/app/MediaRouteActionProvider;->refreshRoute()V

    iget-object p1, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    if-eqz p1, :cond_2

    iget p0, p0, Landroid/app/MediaRouteActionProvider;->mRouteTypes:I

    invoke-virtual {p1, p0}, Landroid/app/MediaRouteButton;->setRouteTypes(I)V

    :cond_2
    return-void
.end method

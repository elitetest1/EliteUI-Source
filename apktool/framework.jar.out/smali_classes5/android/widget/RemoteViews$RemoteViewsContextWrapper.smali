.class Landroid/widget/RemoteViews$RemoteViewsContextWrapper;
.super Landroid/content/ContextWrapper;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteViewsContextWrapper"
.end annotation


# instance fields
.field private final greylist-max-o mContextForResources:Landroid/content/Context;


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mContextForResources:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public whitelist getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mContextForResources:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getResources()Landroid/content/res/Resources;
    .locals 0

    iget-object p0, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mContextForResources:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getTheme()Landroid/content/res/Resources$Theme;
    .locals 0

    iget-object p0, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mContextForResources:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getUser()Landroid/os/UserHandle;
    .locals 0

    iget-object p0, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mContextForResources:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getUserId()I
    .locals 0

    iget-object p0, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mContextForResources:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    return p0
.end method

.method public whitelist isRestricted()Z
    .locals 0

    iget-object p0, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mContextForResources:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    move-result p0

    return p0
.end method

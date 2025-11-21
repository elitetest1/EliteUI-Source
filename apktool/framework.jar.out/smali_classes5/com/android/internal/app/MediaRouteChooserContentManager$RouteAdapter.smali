.class final Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MediaRouteChooserContentManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MediaRouteChooserContentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RouteAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroid/media/MediaRouter$RouteInfo;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private final blacklist mInflater:Landroid/view/LayoutInflater;

.field final synthetic blacklist this$0:Lcom/android/internal/app/MediaRouteChooserContentManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/MediaRouteChooserContentManager;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserContentManager;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public whitelist areAllItemsEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x10900c6

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    const p1, 0x1020014

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p3, 0x1020015

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p1, 0x8

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p1, ""

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setEnabled(Z)V

    return-object p2
.end method

.method public whitelist isEnabled(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public whitelist onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->select()V

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserContentManager;

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager;->mDelegate:Lcom/android/internal/app/MediaRouteChooserContentManager$Delegate;

    invoke-interface {p0}, Lcom/android/internal/app/MediaRouteChooserContentManager$Delegate;->dismissView()V

    :cond_0
    return-void
.end method

.method public blacklist update()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;->clear()V

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserContentManager;

    invoke-static {v0}, Lcom/android/internal/app/MediaRouteChooserContentManager;->-$$Nest$fgetmRouter(Lcom/android/internal/app/MediaRouteChooserContentManager;)Landroid/media/MediaRouter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserContentManager;

    invoke-static {v2}, Lcom/android/internal/app/MediaRouteChooserContentManager;->-$$Nest$fgetmRouter(Lcom/android/internal/app/MediaRouteChooserContentManager;)Landroid/media/MediaRouter;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserContentManager;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/MediaRouteChooserContentManager;->onFilterRoute(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;->add(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteComparator;->sInstance:Lcom/android/internal/app/MediaRouteChooserContentManager$RouteComparator;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;->sort(Ljava/util/Comparator;)V

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;->notifyDataSetChanged()V

    return-void
.end method

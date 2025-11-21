.class Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;

.field final synthetic blacklist val$params:Landroid/widget/RemoteViews$ActionApplyParams;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate$1;->this$1:Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;

    iput-object p2, p0, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate$1;->val$params:Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    instance-of p3, p2, Landroid/view/ViewGroup;

    const/4 p4, 0x1

    if-eqz p3, :cond_5

    move-object p3, p2

    check-cast p3, Landroid/view/ViewGroup;

    instance-of p1, p1, Landroid/widget/AdapterViewAnimator;

    const/4 p5, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p3, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Landroid/view/ViewGroup;

    :cond_0
    if-nez p3, :cond_1

    return p4

    :cond_1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_0
    if-ge p5, p1, :cond_3

    invoke-virtual {p3, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020320

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/RemoteViews$RemoteResponse;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/widget/RemoteViews$RemoteResponse;

    goto :goto_1

    :cond_2
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    return p4

    :cond_4
    invoke-static {p2}, Landroid/widget/RemoteViews;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p3, p1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    iget-object p1, p0, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate$1;->val$params:Landroid/widget/RemoteViews$ActionApplyParams;

    iget-object p1, p1, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    iget-object p0, p0, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate$1;->this$1:Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;

    iget-object p0, p0, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    invoke-interface {p1, p2, p0, v0}, Landroid/widget/RemoteViews$InteractionHandler;->onInteraction(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    :cond_5
    return p4
.end method

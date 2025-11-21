.class Landroid/widget/RelativeLayout$AppWidgetListScrollListener;
.super Ljava/lang/Object;
.source "RelativeLayout.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppWidgetListScrollListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/RelativeLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;-><init>(Landroid/widget/RelativeLayout;)V

    return-void
.end method


# virtual methods
.method public whitelist onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public whitelist onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    iget-object p1, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetListView(Landroid/widget/RelativeLayout;)Landroid/widget/AbsListView;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmReleaseScrollRunnable(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout$ReleaseScrollRunnable;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$ReleaseScrollRunnable;

    iget-object v2, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$ReleaseScrollRunnable;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout-IA;)V

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout;->-$$Nest$fputmReleaseScrollRunnable(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$ReleaseScrollRunnable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetListView(Landroid/widget/RelativeLayout;)Landroid/widget/AbsListView;

    move-result-object p1

    iget-object v1, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmReleaseScrollRunnable(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout$ReleaseScrollRunnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object p1, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmExpandTopBarRunnable(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    iget-object v2, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$ExpandTopBarRunnable;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout-IA;)V

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout;->-$$Nest$fputmExpandTopBarRunnable(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$ExpandTopBarRunnable;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetListView(Landroid/widget/RelativeLayout;)Landroid/widget/AbsListView;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmExpandTopBarRunnable(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_1
    if-nez p2, :cond_4

    iget-object p1, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetToolBar(Landroid/widget/RelativeLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetToolBar(Landroid/widget/RelativeLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget-object p2, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {p2}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetToolBar(Landroid/widget/RelativeLayout;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    if-ge p1, p2, :cond_3

    iget-object p1, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetListView(Landroid/widget/RelativeLayout;)Landroid/widget/AbsListView;

    move-result-object p1

    iget-object p2, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {p2}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmReleaseScrollRunnable(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout$ReleaseScrollRunnable;

    move-result-object p2

    const-wide/16 v0, 0x32

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetToolBar(Landroid/widget/RelativeLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget-object p2, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {p2}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetToolBar(Landroid/widget/RelativeLayout;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    if-ge p1, p2, :cond_4

    iget-object p1, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetListView(Landroid/widget/RelativeLayout;)Landroid/widget/AbsListView;

    move-result-object p1

    iget-object p0, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {p0}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmExpandTopBarRunnable(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    move-result-object p0

    const-wide/16 v0, 0x60e

    invoke-virtual {p1, p0, v0, v1}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3
    iget-object p1, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetToolBar(Landroid/widget/RelativeLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetListView(Landroid/widget/RelativeLayout;)Landroid/widget/AbsListView;

    move-result-object p1

    iget-object p0, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {p0}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmExpandTopBarRunnable(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    move-result-object p0

    const-wide/16 v0, 0x5dc

    invoke-virtual {p1, p0, v0, v1}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_2
    return-void
.end method

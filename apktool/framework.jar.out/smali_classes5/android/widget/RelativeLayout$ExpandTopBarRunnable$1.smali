.class Landroid/widget/RelativeLayout$ExpandTopBarRunnable$1;
.super Ljava/lang/Object;
.source "RelativeLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RelativeLayout$ExpandTopBarRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RelativeLayout$ExpandTopBarRunnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/RelativeLayout$ExpandTopBarRunnable$1;->this$1:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/RelativeLayout$ExpandTopBarRunnable$1;->this$1:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    iget-object v0, v0, Landroid/widget/RelativeLayout$ExpandTopBarRunnable;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetListView(Landroid/widget/RelativeLayout;)Landroid/widget/AbsListView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/RelativeLayout$ExpandTopBarRunnable$1;->this$1:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    iget-object v0, v0, Landroid/widget/RelativeLayout$ExpandTopBarRunnable;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetToolBar(Landroid/widget/RelativeLayout;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Landroid/widget/RelativeLayout$ExpandTopBarRunnable$1;->this$1:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    iget v0, v0, Landroid/widget/RelativeLayout$ExpandTopBarRunnable;->mLastOffset:I

    sub-int v0, p1, v0

    iget-object v1, p0, Landroid/widget/RelativeLayout$ExpandTopBarRunnable$1;->this$1:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    iget-object v1, v1, Landroid/widget/RelativeLayout$ExpandTopBarRunnable;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetToolBar(Landroid/widget/RelativeLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/widget/RelativeLayout$ExpandTopBarRunnable$1;->this$1:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    iget-object v1, v1, Landroid/widget/RelativeLayout$ExpandTopBarRunnable;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetToolBar(Landroid/widget/RelativeLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v1, v0

    if-lez v1, :cond_2

    iget-object v0, p0, Landroid/widget/RelativeLayout$ExpandTopBarRunnable$1;->this$1:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    iget-object v0, v0, Landroid/widget/RelativeLayout$ExpandTopBarRunnable;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetToolBar(Landroid/widget/RelativeLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int v0, v0

    :cond_2
    iget-object v1, p0, Landroid/widget/RelativeLayout$ExpandTopBarRunnable$1;->this$1:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    iget-object v1, v1, Landroid/widget/RelativeLayout$ExpandTopBarRunnable;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetListView(Landroid/widget/RelativeLayout;)Landroid/widget/AbsListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->scrollListBy(I)V

    iget-object v1, p0, Landroid/widget/RelativeLayout$ExpandTopBarRunnable$1;->this$1:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    iget-object v1, v1, Landroid/widget/RelativeLayout$ExpandTopBarRunnable;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetListView(Landroid/widget/RelativeLayout;)Landroid/widget/AbsListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->offsetTopAndBottom(I)V

    iget-object v1, p0, Landroid/widget/RelativeLayout$ExpandTopBarRunnable$1;->this$1:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    iget-object v1, v1, Landroid/widget/RelativeLayout$ExpandTopBarRunnable;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetToolBar(Landroid/widget/RelativeLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object p0, p0, Landroid/widget/RelativeLayout$ExpandTopBarRunnable$1;->this$1:Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    iput p1, p0, Landroid/widget/RelativeLayout$ExpandTopBarRunnable;->mLastOffset:I

    :cond_3
    :goto_0
    return-void
.end method

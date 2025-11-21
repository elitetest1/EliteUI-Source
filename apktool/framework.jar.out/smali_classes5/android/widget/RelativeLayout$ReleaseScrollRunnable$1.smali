.class Landroid/widget/RelativeLayout$ReleaseScrollRunnable$1;
.super Ljava/lang/Object;
.source "RelativeLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RelativeLayout$ReleaseScrollRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/RelativeLayout$ReleaseScrollRunnable;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RelativeLayout$ReleaseScrollRunnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/RelativeLayout$ReleaseScrollRunnable$1;->this$1:Landroid/widget/RelativeLayout$ReleaseScrollRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/RelativeLayout$ReleaseScrollRunnable$1;->this$1:Landroid/widget/RelativeLayout$ReleaseScrollRunnable;

    iget-object v0, v0, Landroid/widget/RelativeLayout$ReleaseScrollRunnable;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetListView(Landroid/widget/RelativeLayout;)Landroid/widget/AbsListView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RelativeLayout$ReleaseScrollRunnable$1;->this$1:Landroid/widget/RelativeLayout$ReleaseScrollRunnable;

    iget-object v0, v0, Landroid/widget/RelativeLayout$ReleaseScrollRunnable;->this$0:Landroid/widget/RelativeLayout;

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

    iget-object v0, p0, Landroid/widget/RelativeLayout$ReleaseScrollRunnable$1;->this$1:Landroid/widget/RelativeLayout$ReleaseScrollRunnable;

    iget v0, v0, Landroid/widget/RelativeLayout$ReleaseScrollRunnable;->mLastOffset:I

    sub-int v0, p1, v0

    iget-object v1, p0, Landroid/widget/RelativeLayout$ReleaseScrollRunnable$1;->this$1:Landroid/widget/RelativeLayout$ReleaseScrollRunnable;

    iget-object v1, v1, Landroid/widget/RelativeLayout$ReleaseScrollRunnable;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetToolBar(Landroid/widget/RelativeLayout;)Landroid/view/View;

    move-result-object v1

    neg-int v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v1, p0, Landroid/widget/RelativeLayout$ReleaseScrollRunnable$1;->this$1:Landroid/widget/RelativeLayout$ReleaseScrollRunnable;

    iget-object v1, v1, Landroid/widget/RelativeLayout$ReleaseScrollRunnable;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetListView(Landroid/widget/RelativeLayout;)Landroid/widget/AbsListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->offsetTopAndBottom(I)V

    iget-object p0, p0, Landroid/widget/RelativeLayout$ReleaseScrollRunnable$1;->this$1:Landroid/widget/RelativeLayout$ReleaseScrollRunnable;

    iput p1, p0, Landroid/widget/RelativeLayout$ReleaseScrollRunnable;->mLastOffset:I

    :cond_1
    :goto_0
    return-void
.end method

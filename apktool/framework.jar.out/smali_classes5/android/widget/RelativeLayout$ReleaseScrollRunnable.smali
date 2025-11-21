.class Landroid/widget/RelativeLayout$ReleaseScrollRunnable;
.super Ljava/lang/Object;
.source "RelativeLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReleaseScrollRunnable"
.end annotation


# instance fields
.field private blacklist mExpandOffsetAnimator:Landroid/animation/ValueAnimator;

.field blacklist mLastOffset:I

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

    iput-object p1, p0, Landroid/widget/RelativeLayout$ReleaseScrollRunnable;->this$0:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$ReleaseScrollRunnable;-><init>(Landroid/widget/RelativeLayout;)V

    return-void
.end method


# virtual methods
.method public blacklist cancel()V
    .locals 1

    iget-object v0, p0, Landroid/widget/RelativeLayout$ReleaseScrollRunnable;->mExpandOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RelativeLayout$ReleaseScrollRunnable;->mExpandOffsetAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public whitelist test-api run()V
    .locals 6

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout$ReleaseScrollRunnable;->mExpandOffsetAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e6147ae    # 0.22f

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-direct {v1, v4, v5, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Landroid/widget/RelativeLayout$ReleaseScrollRunnable;->mExpandOffsetAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/widget/RelativeLayout$ReleaseScrollRunnable;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetToolBar(Landroid/widget/RelativeLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Landroid/widget/RelativeLayout$ReleaseScrollRunnable;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetToolBar(Landroid/widget/RelativeLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/RelativeLayout$ReleaseScrollRunnable;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetToolBar(Landroid/widget/RelativeLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/RelativeLayout$ReleaseScrollRunnable;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetToolBar(Landroid/widget/RelativeLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    :goto_0
    iget-object v1, p0, Landroid/widget/RelativeLayout$ReleaseScrollRunnable;->mExpandOffsetAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    filled-new-array {v2, v0}, [I

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, p0, Landroid/widget/RelativeLayout$ReleaseScrollRunnable;->mExpandOffsetAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/RelativeLayout$ReleaseScrollRunnable$1;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout$ReleaseScrollRunnable$1;-><init>(Landroid/widget/RelativeLayout$ReleaseScrollRunnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Landroid/widget/RelativeLayout$ReleaseScrollRunnable;->mExpandOffsetAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/RelativeLayout$ReleaseScrollRunnable$2;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout$ReleaseScrollRunnable$2;-><init>(Landroid/widget/RelativeLayout$ReleaseScrollRunnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Landroid/widget/RelativeLayout$ReleaseScrollRunnable;->mExpandOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

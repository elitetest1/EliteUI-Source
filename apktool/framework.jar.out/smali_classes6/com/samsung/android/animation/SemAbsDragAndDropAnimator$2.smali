.class Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemAbsDragAndDropAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->setDraggable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

.field final synthetic blacklist val$fadeOut:Z


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;Z)V
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

    iput-object p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$2;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    iput-boolean p2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$2;->val$fadeOut:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$2;->val$fadeOut:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$2;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->-$$Nest$msetDndModeInternal(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;Z)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$2;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    const/16 v0, 0xff

    iput v0, p1, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragHandleAlpha:I

    iget-object p0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$2;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    invoke-static {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->-$$Nest$fgetmView(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$2;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    invoke-static {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->-$$Nest$fgetmView(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

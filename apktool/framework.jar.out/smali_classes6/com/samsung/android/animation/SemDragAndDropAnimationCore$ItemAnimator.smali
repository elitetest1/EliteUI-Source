.class Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;
.super Ljava/lang/Object;
.source "SemDragAndDropAnimationCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/animation/SemDragAndDropAnimationCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemAnimator"
.end annotation


# instance fields
.field private blacklist mAnimations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsAnimating:Z

.field final synthetic blacklist this$0:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemDragAndDropAnimationCore;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->this$0:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method blacklist getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    return-object p0
.end method

.method blacklist putItemAnimation(ILcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method blacklist removeAll()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method blacklist removeItemAnimation(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public whitelist test-api run()V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_1

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->computeAnimation(J)V

    invoke-virtual {v4}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->isFinished()Z

    move-result v4

    and-int/2addr v3, v4

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->this$0:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->-$$Nest$fgetmView(Lcom/samsung/android/animation/SemDragAndDropAnimationCore;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->this$0:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->-$$Nest$fgetmView(Lcom/samsung/android/animation/SemDragAndDropAnimationCore;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mIsAnimating:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mIsAnimating:Z

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->this$0:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->-$$Nest$fgetmItemAnimationListener(Lcom/samsung/android/animation/SemDragAndDropAnimationCore;)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->this$0:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    invoke-static {p0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->-$$Nest$fgetmItemAnimationListener(Lcom/samsung/android/animation/SemDragAndDropAnimationCore;)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;->onItemAnimatorEnd()V

    :cond_3
    return-void
.end method

.method blacklist start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mIsAnimating:Z

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->this$0:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->-$$Nest$fgetmView(Lcom/samsung/android/animation/SemDragAndDropAnimationCore;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->run()V

    return-void
.end method

.class Lcom/samsung/android/animation/SemDragAndDropGridAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemDragAndDropGridAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemDragAndDropGridAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget p1, p1, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget v0, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget-object p1, p1, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget v0, v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget v1, v1, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->dropDone(II)V

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget v0, p1, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->speakDragReleaseForAccessibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget-object p1, p1, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {p1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->removeAll()V

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    invoke-virtual {p1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->resetDndState()V

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget-object p1, p1, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    if-eqz p1, :cond_1

    const-string p1, "SemDragAndDropGridAnimator"

    const-string v0, "dndListener.onDragAndDropEnd() from AnimationEnd"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    invoke-interface {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;->onDragAndDropEnd()V

    :cond_1
    return-void
.end method

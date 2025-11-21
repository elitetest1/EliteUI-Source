.class Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemDragAndDropListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemDragAndDropListAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget p1, p1, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget v0, v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragPos:I

    const-string v1, "SemDragAndDropListAnimator"

    if-eq p1, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onTouchUpCancel : onAnimationEnd : mDndController.dropDone #2 , mFirstDragPos = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget v0, v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mDragPos = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget v0, v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragPos:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-object p1, p1, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget v0, v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget v2, v2, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragPos:I

    invoke-interface {p1, v0, v2}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->dropDone(II)V

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget v0, p1, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragPos:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->speakDragReleaseForAccessibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-object p1, p1, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {p1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->removeAll()V

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-virtual {p1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->resetDndState()V

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-object p1, p1, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    if-eqz p1, :cond_1

    const-string p1, "dndListener.onDragAndDropEnd() from onAnimationEnd() #3"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    invoke-interface {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;->onDragAndDropEnd()V

    :cond_1
    return-void
.end method

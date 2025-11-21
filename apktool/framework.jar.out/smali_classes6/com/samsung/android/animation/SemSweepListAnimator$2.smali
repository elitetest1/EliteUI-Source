.class Lcom/samsung/android/animation/SemSweepListAnimator$2;
.super Ljava/lang/Object;
.source "SemSweepListAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemSweepListAnimator;->onActionUp(Landroid/view/MotionEvent;Landroid/view/View;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

.field final synthetic blacklist val$position:I

.field final synthetic blacklist val$viewForeground:Landroid/view/View;

.field final synthetic blacklist val$width:I


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemSweepListAnimator;Landroid/view/View;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    iput-object p2, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->val$viewForeground:Landroid/view/View;

    iput p3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->val$width:I

    iput p4, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->-$$Nest$fgetmSweepAnimationType(Lcom/samsung/android/animation/SemSweepListAnimator;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->val$viewForeground:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    iget v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->val$width:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->-$$Nest$fgetmSweepAnimationType(Lcom/samsung/android/animation/SemSweepListAnimator;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    :cond_1
    const/high16 p1, -0x40800000    # -1.0f

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->-$$Nest$fgetmSweepAnimationFilter(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->val$position:I

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->doUpActionWhenAnimationUpdate(IF)V

    return-void
.end method

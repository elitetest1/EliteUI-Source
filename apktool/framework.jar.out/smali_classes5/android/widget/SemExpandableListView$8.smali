.class Landroid/widget/SemExpandableListView$8;
.super Ljava/lang/Object;
.source "SemExpandableListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemExpandableListView;->startCollapseAllAnimation([ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/SemExpandableListView;

.field final synthetic blacklist val$animationEndRunnable:Ljava/lang/Runnable;

.field final synthetic blacklist val$animations:Ljava/util/ArrayList;

.field final synthetic blacklist val$expanded:[Z

.field final synthetic blacklist val$lastGroupIdBefore:I

.field final synthetic blacklist val$lastPositionBottomBefore:I


# direct methods
.method constructor blacklist <init>(Landroid/widget/SemExpandableListView;Ljava/lang/Runnable;II[ZLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
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

    iput-object p1, p0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    iput-object p2, p0, Landroid/widget/SemExpandableListView$8;->val$animationEndRunnable:Ljava/lang/Runnable;

    iput p3, p0, Landroid/widget/SemExpandableListView$8;->val$lastGroupIdBefore:I

    iput p4, p0, Landroid/widget/SemExpandableListView$8;->val$lastPositionBottomBefore:I

    iput-object p5, p0, Landroid/widget/SemExpandableListView$8;->val$expanded:[Z

    iput-object p6, p0, Landroid/widget/SemExpandableListView$8;->val$animations:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPreDraw()Z
    .locals 15

    iget-object v0, p0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0}, Landroid/widget/SemExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListView$8;->val$animationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {p0}, Landroid/widget/SemExpandableListView;->-$$Nest$mresetCollapseAnimationState(Landroid/widget/SemExpandableListView;)V

    return v1

    :cond_0
    iget-object v2, p0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    iget v3, p0, Landroid/widget/SemExpandableListView$8;->val$lastGroupIdBefore:I

    invoke-static {v2, v3}, Landroid/widget/SemExpandableListView;->-$$Nest$mgetAbsoluteFlatPosition(Landroid/widget/SemExpandableListView;I)I

    move-result v2

    iget-object v3, p0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    iget v4, p0, Landroid/widget/SemExpandableListView$8;->val$lastPositionBottomBefore:I

    invoke-virtual {v3, v2}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Landroid/widget/SemExpandableListView;->-$$Nest$fputmTranslationOffset(Landroid/widget/SemExpandableListView;I)V

    iget-object v2, p0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v2}, Landroid/widget/SemExpandableListView;->getFirstVisiblePosition()I

    move-result v2

    const/4 v3, 0x0

    move v5, v1

    move v4, v3

    :goto_0
    const/16 v6, 0x2bc

    if-ge v4, v0, :cond_5

    iget-object v7, p0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    add-int v8, v4, v2

    invoke-static {v7, v8}, Landroid/widget/SemExpandableListView;->-$$Nest$misHeaderOrFooterPosition(Landroid/widget/SemExpandableListView;I)Z

    move-result v7

    iget-object v8, p0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v8, v4}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v9, v4}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v9

    iget-object v11, p0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v11}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/SemExpandableListView$ViewInfo;

    if-eqz v11, :cond_1

    iget v11, v11, Landroid/widget/SemExpandableListView$ViewInfo;->top:I

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v12

    sub-int/2addr v11, v12

    goto :goto_1

    :cond_1
    iget-object v11, p0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v11}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmTranslationOffset(Landroid/widget/SemExpandableListView;)I

    move-result v11

    :goto_1
    invoke-static {v9, v10}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v12

    if-nez v7, :cond_2

    iget v13, p0, Landroid/widget/SemExpandableListView$8;->val$lastGroupIdBefore:I

    if-gt v12, v13, :cond_2

    iget-object v13, p0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v13}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmCollapsingRects(Landroid/widget/SemExpandableListView;)[Landroid/widget/SemExpandableListView$CollapsingRect;

    move-result-object v13

    aget-object v13, v13, v12

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/SemExpandableListView$CollapsingRect;->setFinishY(I)V

    :cond_2
    iget-object v13, p0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v13}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v13

    invoke-virtual {v13, v9, v10}, Landroid/util/LongSparseArray;->remove(J)V

    if-nez v7, :cond_3

    iget-object v7, p0, Landroid/widget/SemExpandableListView$8;->val$expanded:[Z

    array-length v9, v7

    if-ge v12, v9, :cond_3

    aget-boolean v7, v7, v12

    xor-int/lit8 v9, v7, 0x1

    and-int/2addr v5, v9

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v7, v8, v3, v6}, Landroid/widget/SemExpandableListView;->-$$Nest$mstartIndicatorAnimation(Landroid/widget/SemExpandableListView;Landroid/view/View;ZI)V

    :cond_3
    if-nez v11, :cond_4

    goto :goto_2

    :cond_4
    int-to-float v6, v11

    invoke-virtual {v8, v6}, Landroid/view/View;->setTranslationY(F)V

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v1, [F

    const/4 v9, 0x0

    aput v9, v7, v3

    invoke-static {v8, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/SemExpandableListView$8;->val$animations:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_5
    new-instance v0, Landroid/widget/SemExpandableListView$8$1;

    invoke-direct {v0, p0}, Landroid/widget/SemExpandableListView$8$1;-><init>(Landroid/widget/SemExpandableListView$8;)V

    if-eqz v5, :cond_6

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    return v3

    :cond_6
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    iget-object v2, v2, Landroid/widget/SemExpandableListView;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Landroid/widget/SemExpandableListView$8;->val$animations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v2, p0, Landroid/widget/SemExpandableListView$8;->val$animations:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    int-to-long v4, v6

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetEXPAND_COLLAPSE_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p0, p0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {p0}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/LongSparseArray;->clear()V

    return v3

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

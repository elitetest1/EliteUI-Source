.class Landroid/widget/SemExpandableListView$6;
.super Ljava/lang/Object;
.source "SemExpandableListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemExpandableListView;->startExpandAllAnimation([ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/SemExpandableListView;

.field final synthetic blacklist val$animationEndRunnable:Ljava/lang/Runnable;

.field final synthetic blacklist val$expanded:[Z


# direct methods
.method constructor blacklist <init>(Landroid/widget/SemExpandableListView;Ljava/lang/Runnable;[Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    iput-object p1, p0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    iput-object p2, p0, Landroid/widget/SemExpandableListView$6;->val$animationEndRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Landroid/widget/SemExpandableListView$6;->val$expanded:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPreDraw()Z
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v1}, Landroid/widget/SemExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v1, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v1}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v1}, Landroid/widget/SemExpandableListView;->-$$Nest$mresetExpandAnimationState(Landroid/widget/SemExpandableListView;)V

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->val$animationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return v2

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v4}, Landroid/widget/SemExpandableListView;->getFirstVisiblePosition()I

    move-result v4

    iget-object v5, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v5}, Landroid/widget/SemExpandableListView;->-$$Nest$mgetLastNonFooterPosition(Landroid/widget/SemExpandableListView;)I

    move-result v5

    if-ge v5, v4, :cond_1

    iget-object v1, v0, Landroid/widget/SemExpandableListView$6;->val$animationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-$$Nest$mresetExpandAnimationState(Landroid/widget/SemExpandableListView;)V

    return v2

    :cond_1
    iget-object v4, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v4, v5}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v6

    add-int/lit8 v7, v6, 0x1

    new-array v8, v7, [I

    iget-object v9, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    new-array v10, v7, [Landroid/graphics/RectF;

    invoke-static {v9, v10}, Landroid/widget/SemExpandableListView;->-$$Nest$fputmGhostViewsVisibleAreas(Landroid/widget/SemExpandableListView;[Landroid/graphics/RectF;)V

    iget-object v9, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    new-array v7, v7, [Landroid/widget/SemExpandableListView$ExpandingRect;

    invoke-static {v9, v7}, Landroid/widget/SemExpandableListView;->-$$Nest$fputmExpandingRects(Landroid/widget/SemExpandableListView;[Landroid/widget/SemExpandableListView$ExpandingRect;)V

    iget-object v7, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v7}, Landroid/widget/SemExpandableListView;->getHeight()I

    move-result v7

    iget-object v9, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v9}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-virtual {v9, v10}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v9, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v9}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/SemExpandableListView$ViewInfo;

    if-nez v4, :cond_3

    invoke-static {v6}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v4

    iget-object v6, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v6}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/SemExpandableListView$ViewInfo;

    if-nez v4, :cond_2

    iget-object v4, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v4, v7}, Landroid/widget/SemExpandableListView;->-$$Nest$fputmTranslationOffset(Landroid/widget/SemExpandableListView;I)V

    goto :goto_0

    :cond_2
    iget-object v5, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    iget v4, v4, Landroid/widget/SemExpandableListView$ViewInfo;->bottom:I

    sub-int/2addr v7, v4

    invoke-static {v5, v7}, Landroid/widget/SemExpandableListView;->-$$Nest$fputmTranslationOffset(Landroid/widget/SemExpandableListView;I)V

    goto :goto_0

    :cond_3
    iget-object v5, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    iget v4, v4, Landroid/widget/SemExpandableListView$ViewInfo;->bottom:I

    sub-int/2addr v7, v4

    invoke-static {v5, v7}, Landroid/widget/SemExpandableListView;->-$$Nest$fputmTranslationOffset(Landroid/widget/SemExpandableListView;I)V

    :goto_0
    move v6, v2

    const/4 v5, 0x0

    :goto_1
    const/16 v7, 0x2bc

    if-ge v5, v1, :cond_c

    iget-object v9, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v9, v5}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iget-object v10, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v10, v5}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v10

    iget-object v12, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v12}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/SemExpandableListView$ViewInfo;

    invoke-static {v10, v11}, Landroid/widget/SemExpandableListView;->getPackedPositionType(J)I

    move-result v13

    if-nez v13, :cond_4

    iget-object v13, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v13, v5}, Landroid/widget/SemExpandableListView;->-$$Nest$misHeaderOrFooterPosition(Landroid/widget/SemExpandableListView;I)Z

    move-result v13

    if-nez v13, :cond_4

    move v13, v2

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    :goto_2
    invoke-static {v10, v11}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v14

    if-eqz v12, :cond_8

    const/16 v16, 0x0

    iget-object v4, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v4}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Landroid/util/LongSparseArray;->remove(J)V

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v4

    iget v10, v12, Landroid/widget/SemExpandableListView$ViewInfo;->top:I

    sub-int/2addr v4, v10

    if-eqz v13, :cond_6

    aput v4, v8, v14

    iget-object v10, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v10}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGhostViewsVisibleAreas(Landroid/widget/SemExpandableListView;)[Landroid/graphics/RectF;

    move-result-object v10

    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    aput-object v11, v10, v14

    add-int/lit8 v10, v14, 0x1

    invoke-static {v10}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v10

    iget-object v13, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v13, v10, v11}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result v10

    if-lt v10, v1, :cond_5

    iget-object v10, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v10}, Landroid/widget/SemExpandableListView;->getHeight()I

    move-result v10

    goto :goto_3

    :cond_5
    iget-object v11, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v11, v10}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    :goto_3
    iget-object v11, v0, Landroid/widget/SemExpandableListView$6;->val$expanded:[Z

    aget-boolean v11, v11, v14

    and-int/2addr v6, v11

    if-nez v11, :cond_6

    iget-object v11, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v11, v9, v2, v7}, Landroid/widget/SemExpandableListView;->-$$Nest$mstartIndicatorAnimation(Landroid/widget/SemExpandableListView;Landroid/view/View;ZI)V

    new-instance v7, Landroid/graphics/RectF;

    iget v11, v12, Landroid/widget/SemExpandableListView$ViewInfo;->left:I

    int-to-float v11, v11

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v13

    int-to-float v13, v13

    const/16 v17, 0x0

    iget v15, v12, Landroid/widget/SemExpandableListView$ViewInfo;->right:I

    int-to-float v15, v15

    int-to-float v10, v10

    invoke-direct {v7, v11, v13, v15, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v10, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v10}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmExpandingRects(Landroid/widget/SemExpandableListView;)[Landroid/widget/SemExpandableListView$ExpandingRect;

    move-result-object v10

    new-instance v11, Landroid/widget/SemExpandableListView$ExpandingRect;

    iget v13, v12, Landroid/widget/SemExpandableListView$ViewInfo;->bottom:I

    iget-object v15, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v15}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGhostViewsVisibleAreas(Landroid/widget/SemExpandableListView;)[Landroid/graphics/RectF;

    move-result-object v15

    aget-object v15, v15, v14

    invoke-direct {v11, v13, v7, v15}, Landroid/widget/SemExpandableListView$ExpandingRect;-><init>(ILandroid/graphics/RectF;Landroid/graphics/RectF;)V

    aput-object v11, v10, v14

    goto :goto_4

    :cond_6
    const/16 v17, 0x0

    :goto_4
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v7

    iget v10, v12, Landroid/widget/SemExpandableListView$ViewInfo;->top:I

    if-ne v7, v10, :cond_7

    goto :goto_5

    :cond_7
    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v9, v4}, Landroid/view/View;->setTranslationY(F)V

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v2, [F

    aput v17, v7, v16

    invoke-static {v9, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v4

    if-nez v4, :cond_9

    goto :goto_5

    :cond_9
    if-nez v13, :cond_a

    new-instance v4, Landroid/widget/SemExpandableListView$ViewInfo;

    invoke-direct {v4, v9}, Landroid/widget/SemExpandableListView$ViewInfo;-><init>(Landroid/view/View;)V

    iget-object v7, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v7}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGhostExpandCollapseChildViews(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v7, v17

    invoke-virtual {v9, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v7, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    aget v9, v8, v14

    neg-int v9, v9

    invoke-static {v7, v9, v4}, Landroid/widget/SemExpandableListView;->-$$Nest$mcreateViewSnapshotAnimationReverse(Landroid/widget/SemExpandableListView;ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "How on Earth this is possible?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_c
    const/16 v16, 0x0

    iget-object v1, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v1}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    move/from16 v2, v16

    :goto_6
    if-ge v2, v1, :cond_d

    iget-object v4, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v4}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/SemExpandableListView$ViewInfo;

    iget-object v5, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v5}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmTranslationOffset(Landroid/widget/SemExpandableListView;)I

    move-result v8

    invoke-static {v5, v8, v4}, Landroid/widget/SemExpandableListView;->-$$Nest$mcreateViewSnapshotAnimation(Landroid/widget/SemExpandableListView;ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v5}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGhostViews(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_d
    new-instance v1, Landroid/widget/SemExpandableListView$6$1;

    invoke-direct {v1, v0}, Landroid/widget/SemExpandableListView$6$1;-><init>(Landroid/widget/SemExpandableListView$6;)V

    if-eqz v6, :cond_e

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    return v16

    :cond_e
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-object v4, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    iget-object v4, v4, Landroid/widget/SemExpandableListView;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    int-to-long v3, v7

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetEXPAND_COLLAPSE_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    return v16

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.class Landroid/widget/SemExpandableListView$5;
.super Ljava/lang/Object;
.source "SemExpandableListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemExpandableListView;->startExpandAnimation(ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/SemExpandableListView;

.field final synthetic blacklist val$animationEndRunnable:Ljava/lang/Runnable;

.field final synthetic blacklist val$groupPos:I


# direct methods
.method constructor blacklist <init>(Landroid/widget/SemExpandableListView;Ljava/lang/Runnable;I)V
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

    iput-object p1, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    iput-object p2, p0, Landroid/widget/SemExpandableListView$5;->val$animationEndRunnable:Ljava/lang/Runnable;

    iput p3, p0, Landroid/widget/SemExpandableListView$5;->val$groupPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPreDraw()Z
    .locals 14

    iget-object v0, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0}, Landroid/widget/SemExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-$$Nest$mresetExpandAnimationState(Landroid/widget/SemExpandableListView;)V

    iget-object p0, p0, Landroid/widget/SemExpandableListView$5;->val$animationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return v1

    :cond_0
    iget v2, p0, Landroid/widget/SemExpandableListView$5;->val$groupPos:I

    invoke-static {v2}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    iget v4, p0, Landroid/widget/SemExpandableListView$5;->val$groupPos:I

    add-int/2addr v4, v1

    invoke-static {v4}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v4

    iget-object v6, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v6, v2, v3}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result v2

    iget-object v3, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v3, v4, v5}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result v3

    iget-object v4, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v4}, Landroid/widget/SemExpandableListView;->getFirstVisiblePosition()I

    move-result v4

    iget-object v5, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    sub-int v6, v2, v4

    invoke-virtual {v5, v6}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startExpandAnimation() groupPos="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Landroid/widget/SemExpandableListView$5;->val$groupPos:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", firstPos="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", expGroupFlatPos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-$$Nest$mresetExpandAnimationState(Landroid/widget/SemExpandableListView;)V

    iget-object p0, p0, Landroid/widget/SemExpandableListView$5;->val$animationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return v1

    :cond_1
    iget-object v2, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v2}, Landroid/widget/SemExpandableListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v3}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v3, v6}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v2, v6

    invoke-static {v3, v2}, Landroid/widget/SemExpandableListView;->-$$Nest$fputmTranslationOffset(Landroid/widget/SemExpandableListView;I)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v2, v6

    invoke-static {v3, v2}, Landroid/widget/SemExpandableListView;->-$$Nest$fputmTranslationOffset(Landroid/widget/SemExpandableListView;I)V

    :goto_0
    iget-object v2, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v2}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGhostViewsVisibleArea(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v2}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGhostViewsVisibleArea(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v6, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v6}, Landroid/widget/SemExpandableListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iput v6, v2, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v2}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGhostViewsVisibleArea(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    int-to-float v6, v6

    iput v6, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v2}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGhostViewsVisibleArea(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v6, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v6}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGhostViewsVisibleArea(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iput v6, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v2}, Landroid/widget/SemExpandableListView;->getExpandCollapseDuration()I

    move-result v2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v0, :cond_8

    add-int v9, v8, v4

    iget-object v10, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v10, v8}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget-object v11, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v11, v9}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v11

    iget-object v13, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v13}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v13

    invoke-virtual {v13, v11, v12}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/SemExpandableListView$ViewInfo;

    if-eqz v13, :cond_4

    iget-object v9, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v9}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v9

    invoke-virtual {v9, v11, v12}, Landroid/util/LongSparseArray;->remove(J)V

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v9

    iget v11, v13, Landroid/widget/SemExpandableListView$ViewInfo;->top:I

    if-ne v9, v11, :cond_3

    goto :goto_2

    :cond_3
    iget-object v9, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v9}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmTranslationOffset(Landroid/widget/SemExpandableListView;)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v10, v9}, Landroid/view/View;->setTranslationY(F)V

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v11, v1, [F

    aput v3, v11, v7

    invoke-static {v10, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v11

    if-nez v11, :cond_5

    goto :goto_2

    :cond_5
    iget-object v11, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v11, v9}, Landroid/widget/SemExpandableListView;->-$$Nest$mgetFlatPositionForConnector(Landroid/widget/SemExpandableListView;I)I

    move-result v9

    iget-object v11, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v11}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmConnector(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListConnector;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, v9, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v11, v11, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v12, p0, Landroid/widget/SemExpandableListView$5;->val$groupPos:I

    if-ne v11, v12, :cond_6

    iget-object v11, v9, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    iget v11, v11, Landroid/widget/SemExpandableListPosition;->childPos:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_6

    new-instance v11, Landroid/widget/SemExpandableListView$ViewInfo;

    invoke-direct {v11, v10}, Landroid/widget/SemExpandableListView$ViewInfo;-><init>(Landroid/view/View;)V

    iget-object v12, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v12}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGhostExpandCollapseChildViews(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_6
    invoke-virtual {v9}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    :cond_7
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0, v5, v1, v2}, Landroid/widget/SemExpandableListView;->-$$Nest$mstartIndicatorAnimation(Landroid/widget/SemExpandableListView;Landroid/view/View;ZI)V

    iget-object v0, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    move v1, v7

    :goto_3
    if-ge v1, v0, :cond_9

    iget-object v3, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v3}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SemExpandableListView$ViewInfo;

    iget-object v4, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v4}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmTranslationOffset(Landroid/widget/SemExpandableListView;)I

    move-result v5

    invoke-static {v4, v5, v3}, Landroid/widget/SemExpandableListView;->-$$Nest$mcreateViewSnapshotAnimation(Landroid/widget/SemExpandableListView;ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v4}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGhostViews(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    iget-object v1, v1, Landroid/widget/SemExpandableListView;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    int-to-long v1, v2

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetEXPAND_COLLAPSE_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Landroid/widget/SemExpandableListView$5$1;

    invoke-direct {v1, p0}, Landroid/widget/SemExpandableListView$5$1;-><init>(Landroid/widget/SemExpandableListView$5;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object p0, p0, Landroid/widget/SemExpandableListView$5;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {p0}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/LongSparseArray;->clear()V

    return v7

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

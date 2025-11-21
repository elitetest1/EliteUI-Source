.class Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;
.super Ljava/lang/Object;
.source "SemAddDeleteGridAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->prepareDelete(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

.field final synthetic blacklist val$adapter:Landroid/widget/ListAdapter;

.field final synthetic blacklist val$deletedItemPosHash:Ljava/util/HashSet;

.field final synthetic blacklist val$deletedItems:Ljava/util/ArrayList;

.field final synthetic blacklist val$firstVisiblePosBefore:I

.field final synthetic blacklist val$gridView:Landroid/widget/GridView;

.field final synthetic blacklist val$lastVisiblePosBefore:I

.field final synthetic blacklist val$singleRowHeightBefore:I


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;Landroid/widget/GridView;IIILandroid/widget/ListAdapter;Ljava/util/HashSet;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
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

    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    iput p3, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$singleRowHeightBefore:I

    iput p4, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$firstVisiblePosBefore:I

    iput p5, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$lastVisiblePosBefore:I

    iput-object p6, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$adapter:Landroid/widget/ListAdapter;

    iput-object p7, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$deletedItemPosHash:Ljava/util/HashSet;

    iput-object p8, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$deletedItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 23

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v3

    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getNumColumns()I

    move-result v4

    const/4 v5, 0x0

    if-le v2, v4, :cond_0

    iget-object v6, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v6, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v7, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v7, v5}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    goto :goto_0

    :cond_0
    iget v6, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$singleRowHeightBefore:I

    :goto_0
    iget v7, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$firstVisiblePosBefore:I

    sub-int/2addr v7, v3

    iget v8, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$lastVisiblePosBefore:I

    move v10, v5

    move v11, v7

    const/4 v12, 0x1

    :goto_1
    if-ge v10, v2, :cond_6

    iget-object v13, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v13, v10}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    iget-object v14, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$adapter:Landroid/widget/ListAdapter;

    add-int v15, v10, v3

    invoke-interface {v14, v15}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v16

    iget-object v14, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget-object v14, v14, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    const/16 v18, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    iget v12, v9, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    int-to-float v12, v12

    cmpl-float v12, v12, v14

    if-nez v12, :cond_1

    iget v12, v9, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v12, v12

    cmpl-float v12, v12, v5

    if-nez v12, :cond_1

    move/from16 v17, v3

    move/from16 v20, v6

    const/4 v12, 0x0

    goto/16 :goto_5

    :cond_1
    iget v12, v9, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    int-to-float v12, v12

    sub-float/2addr v12, v14

    iget v9, v9, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v9, v9

    sub-float/2addr v9, v5

    move/from16 v17, v3

    move/from16 v20, v6

    const/4 v3, 0x0

    goto :goto_4

    :cond_2
    if-lez v11, :cond_3

    if-eqz v12, :cond_3

    sub-int v9, v15, v7

    add-int/lit8 v11, v11, -0x1

    move/from16 v17, v3

    goto :goto_2

    :cond_3
    iget-object v9, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    move/from16 v17, v3

    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$deletedItemPosHash:Ljava/util/HashSet;

    invoke-static {v9, v3, v8}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-$$Nest$mgetNextAppearingViewPosition(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;Ljava/util/HashSet;I)I

    move-result v8

    move v9, v8

    :goto_2
    move/from16 v19, v5

    move v3, v6

    int-to-double v5, v9

    move-wide/from16 v20, v5

    int-to-double v5, v4

    div-double v5, v20, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    div-int/2addr v15, v4

    sub-int/2addr v5, v15

    rem-int/2addr v9, v4

    if-gez v9, :cond_4

    add-int/2addr v9, v4

    :cond_4
    if-le v2, v9, :cond_5

    iget-object v6, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v6, v9}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    move/from16 v20, v3

    goto :goto_3

    :cond_5
    iget-object v6, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    move/from16 v20, v3

    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v3, v15}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    mul-int/2addr v9, v3

    add-int/2addr v6, v9

    :goto_3
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v3

    mul-int v5, v5, v20

    add-int/2addr v3, v5

    int-to-float v5, v6

    sub-float/2addr v5, v14

    int-to-float v3, v3

    sub-float v9, v3, v19

    move v3, v12

    move v12, v5

    :goto_4
    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-virtual {v5, v13, v12, v9}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v12, v3

    :goto_5
    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v17

    move/from16 v6, v20

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_6
    move/from16 v17, v3

    move/from16 v20, v6

    const/16 v18, 0x1

    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget-object v3, v3, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v15, 0x0

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    iget-object v6, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget-object v6, v6, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Landroid/graphics/Rect;

    iget v7, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    iget v8, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    iget v9, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->right:I

    iget v10, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->bottom:I

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v7, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget v8, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    iget-object v9, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$deletedItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->getNewPosition(ILjava/util/ArrayList;)I

    move-result v7

    iget-object v8, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$deletedItemPosHash:Ljava/util/HashSet;

    iget v9, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    sub-int v9, v7, v17

    if-ltz v9, :cond_8

    if-lt v9, v2, :cond_7

    goto :goto_7

    :cond_7
    iget-object v7, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v7, v9}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    iget-object v10, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v10, v9}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    goto :goto_9

    :cond_8
    :goto_7
    rem-int v9, v7, v4

    if-le v2, v9, :cond_9

    iget-object v10, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v10, v9}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    goto :goto_8

    :cond_9
    iget-object v9, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v9}, Landroid/widget/GridView;->getPaddingLeft()I

    move-result v9

    :goto_8
    int-to-float v9, v9

    iget v10, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    div-int/2addr v10, v4

    div-int/2addr v7, v4

    sub-int/2addr v10, v7

    iget v7, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    mul-int v10, v10, v20

    sub-int/2addr v7, v10

    int-to-float v7, v7

    move/from16 v22, v9

    move v9, v7

    move/from16 v7, v22

    :goto_9
    iget v10, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    int-to-float v10, v10

    sub-float/2addr v7, v10

    iget v10, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    float-to-int v7, v7

    float-to-int v9, v9

    invoke-virtual {v10, v7, v9}, Landroid/graphics/Rect;->offset(II)V

    if-eqz v8, :cond_a

    sget v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v7, v9

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v7, v11

    float-to-int v7, v7

    sget v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    sub-float/2addr v8, v11

    div-float/2addr v8, v9

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    new-instance v9, Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v7

    iget v12, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v8

    iget v13, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v7

    iget v7, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    invoke-direct {v9, v11, v12, v13, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v10, v9

    :cond_a
    sget-object v7, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    filled-new-array {v6, v10}, [Ljava/lang/Object;

    move-result-object v6

    const-string v8, "bounds"

    invoke-static {v8, v7, v6}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    const/16 v7, 0xff

    const/4 v8, 0x0

    filled-new-array {v7, v8}, [I

    move-result-object v7

    const-string v9, "alpha"

    invoke-static {v9, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    iget-object v5, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v9, 0x2

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    aput-object v6, v9, v8

    aput-object v7, v9, v18

    invoke-static {v5, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    if-nez v15, :cond_b

    iget-object v6, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget-object v6, v6, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move/from16 v15, v18

    :cond_b
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_c
    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget-object v2, v2, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v1, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2$1;

    invoke-direct {v1, v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;)V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object v1, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->DELETE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mTranslationDuration:I

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

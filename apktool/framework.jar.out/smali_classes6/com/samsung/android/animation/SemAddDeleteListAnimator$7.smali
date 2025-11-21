.class Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;
.super Ljava/lang/Object;
.source "SemAddDeleteListAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteListAnimator;->prepareInsertDelete(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

.field final synthetic blacklist val$adapter:Landroid/widget/ListAdapter;

.field final synthetic blacklist val$childCountBefore:I

.field final synthetic blacklist val$deletedItemPosHash:Ljava/util/HashSet;

.field final synthetic blacklist val$deletedItems:Ljava/util/ArrayList;

.field final synthetic blacklist val$insertedItemPosHash:Ljava/util/HashSet;

.field final synthetic blacklist val$insertedItems:Ljava/util/ArrayList;

.field final synthetic blacklist val$upcomingViewsStartCoords:Ljava/util/HashMap;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator;Landroid/widget/ListAdapter;ILjava/util/HashMap;Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashSet;)V
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

    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$adapter:Landroid/widget/ListAdapter;

    iput p3, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$childCountBefore:I

    iput-object p4, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    iput-object p5, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$insertedItemPosHash:Ljava/util/HashSet;

    iput-object p6, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$insertedItems:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$deletedItems:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$deletedItemPosHash:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v5

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    iget-object v7, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$adapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    if-le v6, v4, :cond_0

    iget-object v10, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v10}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$mgetChildMaxHeight(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)I

    move-result v10

    invoke-virtual {v1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v1, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/widget/ListView;->getWidth()I

    move-result v12

    move v10, v9

    move v11, v10

    :goto_0
    const/4 v13, 0x1

    add-int/2addr v3, v13

    iget v14, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$childCountBefore:I

    sub-int/2addr v14, v6

    add-int/2addr v3, v14

    move v15, v2

    move v14, v9

    move/from16 v16, v13

    :goto_1
    if-ge v14, v6, :cond_b

    move/from16 v17, v13

    add-int v13, v14, v2

    iget-object v9, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$adapter:Landroid/widget/ListAdapter;

    invoke-interface {v9, v13}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v19

    invoke-virtual {v1, v14}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move/from16 v21, v2

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    const-wide/16 v22, -0x1

    cmp-long v22, v19, v22

    move/from16 v23, v3

    if-nez v22, :cond_5

    if-ge v13, v4, :cond_1

    add-int/lit8 v13, v13, 0x1

    move/from16 v22, v4

    int-to-long v3, v13

    :goto_2
    move-wide/from16 v19, v3

    goto :goto_3

    :cond_1
    move/from16 v22, v4

    sub-int v3, v7, v5

    if-lt v13, v3, :cond_2

    add-int/2addr v13, v5

    sub-int/2addr v13, v7

    add-int/lit8 v13, v13, 0x1

    int-to-long v3, v13

    neg-long v3, v3

    goto :goto_2

    :cond_2
    :goto_3
    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v3, v3, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    if-nez v3, :cond_3

    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AFTER header/footer SOMETHING WENT WRONG, in the new layout, header/footer is appearing that was not present before!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_3
    invoke-virtual {v3}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    iget v4, v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v4, v4

    cmpl-float v4, v4, v2

    if-nez v4, :cond_4

    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v13, "AFTER header/footer something strange is happening, the coordinates are same after layout, viewInfo.top="

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", newY="

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_4
    iget v3, v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    const/4 v4, 0x0

    invoke-virtual {v2, v9, v4, v3}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_5
    move/from16 v22, v4

    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v4, v4, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move/from16 v24, v2

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    iget v3, v2, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v3, v3

    cmpl-float v3, v3, v24

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    iget v2, v2, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v2, v2

    sub-float v2, v2, v24

    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    const/4 v4, 0x0

    invoke-virtual {v3, v9, v4, v2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    move/from16 v3, v23

    const/16 v16, 0x0

    goto :goto_7

    :cond_7
    const/4 v4, 0x0

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v2, v24

    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-virtual {v3, v9, v4, v2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getInsertTranslateAlphaScaleAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$insertedItemPosHash:Ljava/util/HashSet;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$insertedItems:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$deletedItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v13, v3, v4}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getShiftCount(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v2

    sub-int v2, v13, v2

    sub-int/2addr v13, v2

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v2

    mul-int/2addr v13, v10

    sub-int/2addr v2, v13

    int-to-float v2, v2

    sub-float v2, v2, v24

    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    const/4 v4, 0x0

    invoke-virtual {v3, v9, v4, v2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getInsertTranslateAlphaScaleAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    move/from16 v3, v23

    goto :goto_7

    :cond_9
    if-lez v15, :cond_a

    if-eqz v16, :cond_a

    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$insertedItems:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$deletedItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v13, v3, v4}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getShiftCount(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v2

    neg-int v2, v2

    add-int/lit8 v15, v15, -0x1

    move/from16 v3, v23

    goto :goto_6

    :cond_a
    sub-int v2, v23, v13

    add-int/lit8 v3, v23, 0x1

    :goto_6
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v4

    mul-int/2addr v2, v10

    add-int/2addr v4, v2

    int-to-float v2, v4

    sub-float v2, v2, v24

    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    const/4 v13, 0x0

    invoke-virtual {v4, v9, v13, v2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v14, v14, 0x1

    move/from16 v13, v17

    move/from16 v2, v21

    move/from16 v4, v22

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_b
    move/from16 v21, v2

    move/from16 v17, v13

    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v2, v2, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "bounds"

    if-eqz v4, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    iget-object v7, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v7, v7, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/graphics/Rect;

    iget v9, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    add-int v13, v11, v12

    iget v14, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->bottom:I

    invoke-direct {v7, v11, v9, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v9, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget v13, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    iget-object v14, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$insertedItems:Ljava/util/ArrayList;

    iget-object v15, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$deletedItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v13, v14, v15}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getNewPosition(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v9

    iget-object v13, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$deletedItemPosHash:Ljava/util/HashSet;

    iget v14, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    sub-int v9, v9, v21

    if-gez v9, :cond_d

    if-nez v6, :cond_c

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v14

    goto :goto_9

    :cond_c
    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v14

    :goto_9
    int-to-float v14, v14

    iget v15, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    neg-int v9, v9

    mul-int/2addr v9, v10

    int-to-float v9, v9

    sub-float/2addr v14, v9

    goto :goto_b

    :cond_d
    if-lt v9, v6, :cond_f

    add-int/lit8 v14, v6, -0x1

    invoke-virtual {v1, v14}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    if-nez v15, :cond_e

    iget v14, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    const/16 v18, 0x0

    rsub-int/lit8 v14, v14, 0x0

    goto :goto_a

    :cond_e
    invoke-virtual {v1, v14}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    iget v15, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    sub-int/2addr v14, v15

    :goto_a
    int-to-float v14, v14

    sub-int/2addr v9, v6

    add-int/lit8 v9, v9, 0x1

    mul-int/2addr v9, v10

    int-to-float v9, v9

    add-float/2addr v14, v9

    goto :goto_b

    :cond_f
    invoke-virtual {v1, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    iget v14, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v14, v14

    sub-float v14, v9, v14

    :goto_b
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    float-to-int v14, v14

    const/4 v15, 0x0

    invoke-virtual {v9, v15, v14}, Landroid/graphics/Rect;->offset(II)V

    if-eqz v13, :cond_10

    sget v13, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v13, v14, v13

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v13, v15

    move/from16 v16, v14

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    float-to-int v13, v13

    sget v14, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    sub-float v14, v16, v14

    div-float/2addr v14, v15

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v14, v15

    float-to-int v14, v14

    new-instance v15, Landroid/graphics/Rect;

    move-object/from16 v16, v1

    iget v1, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v13

    move-object/from16 v19, v2

    iget v2, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v14

    move/from16 v20, v3

    iget v3, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v13

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v14

    invoke-direct {v15, v1, v2, v3, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v1, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    filled-new-array {v7, v15}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v1, v2}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/16 v2, 0xff

    const/4 v15, 0x0

    filled-new-array {v2, v15}, [I

    move-result-object v2

    const-string v3, "alpha"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    iget-object v3, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v4, v15

    aput-object v2, v4, v17

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_c

    :cond_10
    move-object/from16 v16, v1

    move-object/from16 v19, v2

    move/from16 v20, v3

    const/4 v15, 0x0

    iget-object v1, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    filled-new-array {v7, v9}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v5, v2, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    :goto_c
    if-nez v20, :cond_11

    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v2, v2, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move/from16 v3, v17

    goto :goto_d

    :cond_11
    move/from16 v3, v20

    :goto_d
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    goto/16 :goto_8

    :cond_12
    move/from16 v20, v3

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    iget v3, v2, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$insertedItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    mul-int/2addr v4, v10

    add-int/2addr v3, v4

    new-instance v4, Landroid/graphics/Rect;

    iget v6, v2, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    add-int v7, v11, v12

    iget v9, v2, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->bottom:I

    invoke-direct {v4, v11, v6, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/2addr v7, v11

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v9, v3

    invoke-direct {v6, v11, v3, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v3, v3, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v2, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v3, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    filled-new-array {v4, v6}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v5, v3, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    if-nez v20, :cond_13

    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v3, v3, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_13
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_14
    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    sget-object v2, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->INSERT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget v2, v2, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mTranslationDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "postDelayed #3 mAniTimeoutRunnable delay = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget v3, v3, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mTranslationDuration:I

    add-int/lit8 v3, v3, 0x64

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmHandler(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmAniTimeoutRunnable(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mTranslationDuration:I

    add-int/lit8 v0, v0, 0x64

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.class public Lcom/android/internal/widget/DialogViewAnimator;
.super Landroid/widget/ViewAnimator;
.source "DialogViewAnimator.java"


# instance fields
.field private final blacklist mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected whitelist onMeasure(II)V
    .locals 18

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v7, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v1, v8, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eq v1, v8, :cond_0

    goto :goto_0

    :cond_0
    move v9, v7

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getChildCount()I

    move-result v10

    move v11, v7

    move v12, v11

    move v13, v12

    move v14, v13

    :goto_2
    const/4 v1, -0x1

    if-ge v11, v10, :cond_a

    invoke-virtual {v0, v11}, Lcom/android/internal/widget/DialogViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getMeasureAllChildren()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    goto :goto_3

    :cond_2
    move/from16 v2, p1

    move/from16 v4, p2

    goto/16 :goto_7

    :cond_3
    :goto_3
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v3, v1, :cond_4

    const/16 v16, 0x1

    goto :goto_4

    :cond_4
    move/from16 v16, v7

    :goto_4
    iget v3, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v3, v1, :cond_5

    const/16 v17, 0x1

    goto :goto_5

    :cond_5
    move/from16 v17, v7

    :goto_5
    if-eqz v9, :cond_7

    if-nez v16, :cond_6

    if-eqz v17, :cond_7

    :cond_6
    iget-object v1, v0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const/4 v3, 0x0

    const/4 v5, 0x0

    move/from16 v4, p2

    move-object v1, v2

    move/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/DialogViewAnimator;->measureChildWithMargins(Landroid/view/View;IIII)V

    if-eqz v9, :cond_8

    if-nez v16, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v5, v15, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    iget v5, v15, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v5

    const/high16 v12, -0x1000000

    and-int/2addr v5, v12

    move v12, v3

    goto :goto_6

    :cond_8
    move v5, v7

    :goto_6
    if-eqz v9, :cond_9

    if-nez v17, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v6, v15, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v6

    iget v6, v15, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, -0x100

    or-int/2addr v5, v1

    move v13, v3

    :cond_9
    invoke-static {v14, v5}, Lcom/android/internal/widget/DialogViewAnimator;->combineMeasuredStates(II)I

    move-result v14

    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    :cond_a
    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v12, v3

    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingBottom()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getSuggestedMinimumWidth()I

    move-result v5

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_b
    invoke-static {v5, v2, v14}, Lcom/android/internal/widget/DialogViewAnimator;->resolveSizeAndState(III)I

    move-result v5

    shl-int/lit8 v6, v14, 0x10

    invoke-static {v3, v4, v6}, Lcom/android/internal/widget/DialogViewAnimator;->resolveSizeAndState(III)I

    move-result v3

    invoke-virtual {v0, v5, v3}, Lcom/android/internal/widget/DialogViewAnimator;->setMeasuredDimension(II)V

    iget-object v3, v0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_8
    if-ge v7, v3, :cond_e

    iget-object v5, v0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v9, v1, :cond_c

    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v9, v10

    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    goto :goto_9

    :cond_c
    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingLeft()I

    move-result v9

    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v2, v9, v10}, Lcom/android/internal/widget/DialogViewAnimator;->getChildMeasureSpec(III)I

    move-result v9

    :goto_9
    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v10, v1, :cond_d

    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getMeasuredHeight()I

    move-result v10

    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingTop()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v10, v11

    iget v11, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v10, v11

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v10, v6

    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_a

    :cond_d
    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingTop()I

    move-result v10

    invoke-virtual {v0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v10, v11

    iget v11, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v4, v10, v6}, Lcom/android/internal/widget/DialogViewAnimator;->getChildMeasureSpec(III)I

    move-result v6

    :goto_a
    invoke-virtual {v5, v9, v6}, Landroid/view/View;->measure(II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_e
    iget-object v0, v0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

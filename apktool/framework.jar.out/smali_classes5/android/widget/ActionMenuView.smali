.class public Landroid/widget/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActionMenuView$OnMenuItemClickListener;,
        Landroid/widget/ActionMenuView$LayoutParams;,
        Landroid/widget/ActionMenuView$MenuBuilderCallback;,
        Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;,
        Landroid/widget/ActionMenuView$ActionMenuChildView;
    }
.end annotation


# static fields
.field static final greylist-max-o GENERATED_ITEM_PADDING:I = 0x4

.field static final greylist-max-o MIN_CELL_SIZE:I = 0x38

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private greylist-max-o mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private greylist-max-o mFormatItems:Z

.field private greylist-max-o mFormatItemsWidth:I

.field private greylist-max-o mGeneratedItemPadding:I

.field private blacklist mIsThemeDeviceDefaultFamily:Z

.field private greylist-max-o mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private greylist-max-o mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

.field private greylist-max-o mMinCellSize:I

.field private greylist-max-o mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

.field private blacklist mOriginalEndPadding:I

.field private blacklist mOriginalOverflowEndPadding:I

.field private blacklist mOriginalOverflowStartPadding:I

.field private blacklist mOriginalStartPadding:I

.field private blacklist mOverflowBadgeText:Ljava/lang/String;

.field private blacklist mOverflowButtonMinWidth:I

.field private greylist-max-o mPopupContext:Landroid/content/Context;

.field private greylist-max-o mPopupTheme:I

.field private greylist-max-o mPresenter:Landroid/widget/ActionMenuPresenter;

.field private greylist-max-o mReserveOverflow:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMenuBuilderCallback(Landroid/widget/ActionMenuView;)Lcom/android/internal/view/menu/MenuBuilder$Callback;
    .locals 0

    iget-object p0, p0, Landroid/widget/ActionMenuView;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnMenuItemClickListener(Landroid/widget/ActionMenuView;)Landroid/widget/ActionMenuView$OnMenuItemClickListener;
    .locals 0

    iget-object p0, p0, Landroid/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuView;->setBaselineAligned(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42600000    # 56.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    iput-object p1, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    iput v0, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x11200b3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v1, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    iput-boolean v4, p0, Landroid/widget/ActionMenuView;->mIsThemeDeviceDefaultFamily:Z

    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    const v2, 0x10102d8

    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v2, 0x44

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/widget/ActionMenuView;->mOriginalStartPadding:I

    const/16 v3, 0x45

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/ActionMenuView;->mOriginalEndPadding:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    const v4, 0x10102f6

    invoke-virtual {p1, p2, v1, v4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowStartPadding:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowEndPadding:I

    const/16 v1, 0x24

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ActionMenuView;->mOverflowButtonMinWidth:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1040dfc

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/ActionMenuView;->mOverflowBadgeText:Ljava/lang/String;

    return-void
.end method

.method private blacklist getNumericValue(Ljava/lang/String;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x1

    return p0
.end method

.method static greylist-max-o measureChildForCells(Landroid/view/View;IIII)I
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p4

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    invoke-static {v1, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    instance-of p4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz p4, :cond_0

    move-object p4, p0

    check-cast p4, Lcom/android/internal/view/menu/ActionMenuItemView;

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result p4

    if-eqz p4, :cond_1

    move p4, v1

    goto :goto_1

    :cond_1
    move p4, v2

    :goto_1
    if-lez p2, :cond_5

    const/4 v3, 0x2

    if-eqz p4, :cond_2

    if-lt p2, v3, :cond_5

    :cond_2
    mul-int/2addr p2, p1

    const/high16 v4, -0x80000000

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p2, p3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    div-int v4, p2, p1

    rem-int/2addr p2, p1

    if-eqz p2, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    if-eqz p4, :cond_4

    if-ge v4, v3, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_2

    :cond_5
    move v3, v2

    :goto_2
    iget-boolean p2, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez p2, :cond_6

    if-eqz p4, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    iput-boolean v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    iput v3, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int/2addr p1, v3

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Landroid/view/View;->measure(II)V

    return v3
.end method

.method private greylist-max-o onMeasureExactFormat(II)V
    .locals 29

    move-object/from16 v0, p0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getPaddingTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, -0x2

    move/from16 v7, p2

    invoke-static {v7, v5, v6}, Landroid/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v6

    sub-int/2addr v2, v4

    iget v4, v0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    div-int v7, v2, v4

    rem-int v8, v2, v4

    const/4 v9, 0x0

    if-nez v7, :cond_0

    invoke-virtual {v0, v2, v9}, Landroid/widget/ActionMenuView;->setMeasuredDimension(II)V

    return-void

    :cond_0
    div-int/2addr v8, v7

    add-int/2addr v4, v8

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v8

    move v10, v9

    move v12, v10

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    const-wide/16 p1, 0x0

    const-wide/16 v17, 0x0

    :goto_0
    if-ge v12, v8, :cond_9

    invoke-virtual {v0, v12}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v9

    move/from16 v20, v3

    const/16 v3, 0x8

    if-ne v9, v3, :cond_2

    :cond_1
    move v9, v4

    goto :goto_4

    :cond_2
    instance-of v3, v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    add-int/lit8 v14, v14, 0x1

    if-eqz v3, :cond_3

    iget v9, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v21, v7

    const/4 v7, 0x0

    invoke-virtual {v11, v9, v7, v9, v7}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_3
    move/from16 v21, v7

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/ActionMenuView$LayoutParams;

    iput-boolean v7, v9, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    iput v7, v9, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    iput v7, v9, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    iput-boolean v7, v9, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    iput v7, v9, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    iput v7, v9, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    if-eqz v3, :cond_4

    move-object v7, v11

    check-cast v7, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v7}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    iput-boolean v7, v9, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    iget-boolean v7, v0, Landroid/widget/ActionMenuView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v7, :cond_5

    iput-boolean v3, v9, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    :cond_5
    iget-boolean v3, v9, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    move/from16 v3, v21

    :goto_3
    invoke-static {v11, v4, v3, v6, v5}, Landroid/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v3

    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v15

    iget-boolean v7, v9, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-eqz v7, :cond_7

    add-int/lit8 v16, v16, 0x1

    :cond_7
    iget-boolean v7, v9, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v7, :cond_8

    const/4 v13, 0x1

    :cond_8
    sub-int v7, v21, v3

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/4 v9, 0x1

    if-ne v3, v9, :cond_1

    shl-int v3, v9, v12

    move v9, v4

    int-to-long v3, v3

    or-long v17, v17, v3

    :goto_4
    add-int/lit8 v12, v12, 0x1

    move v4, v9

    move/from16 v3, v20

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_9
    move/from16 v20, v3

    move v9, v4

    move/from16 v21, v7

    const/4 v3, 0x2

    if-eqz v13, :cond_a

    if-ne v14, v3, :cond_a

    const/4 v4, 0x1

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    :goto_5
    move/from16 v7, v21

    const/4 v5, 0x0

    :goto_6
    if-lez v16, :cond_14

    if-lez v7, :cond_14

    const v11, 0x7fffffff

    move-wide/from16 v22, p1

    move/from16 v21, v3

    const/4 v3, 0x0

    const/4 v12, 0x0

    :goto_7
    if-ge v3, v8, :cond_e

    invoke-virtual {v0, v3}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    move/from16 v25, v3

    move-object/from16 v3, v24

    check-cast v3, Landroid/widget/ActionMenuView$LayoutParams;

    move/from16 v24, v4

    iget-boolean v4, v3, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-nez v4, :cond_b

    goto :goto_8

    :cond_b
    iget v4, v3, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ge v4, v11, :cond_c

    iget v3, v3, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    const/16 v19, 0x1

    shl-int v4, v19, v25

    int-to-long v11, v4

    move-wide/from16 v22, v11

    move/from16 v12, v19

    move v11, v3

    goto :goto_8

    :cond_c
    const/16 v19, 0x1

    iget v3, v3, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v3, v11, :cond_d

    shl-int v3, v19, v25

    int-to-long v3, v3

    or-long v22, v22, v3

    add-int/lit8 v3, v12, 0x1

    move v12, v3

    :cond_d
    :goto_8
    add-int/lit8 v3, v25, 0x1

    move/from16 v4, v24

    goto :goto_7

    :cond_e
    move/from16 v24, v4

    or-long v17, v17, v22

    if-le v12, v7, :cond_f

    :goto_9
    move/from16 v25, v9

    move/from16 v26, v10

    goto :goto_c

    :cond_f
    add-int/lit8 v11, v11, 0x1

    move v3, v7

    const/4 v7, 0x0

    :goto_a
    if-ge v7, v8, :cond_13

    invoke-virtual {v0, v7}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/ActionMenuView$LayoutParams;

    const/16 v19, 0x1

    shl-int v12, v19, v7

    move/from16 v25, v9

    move/from16 v26, v10

    int-to-long v9, v12

    and-long v27, v22, v9

    cmp-long v12, v27, p1

    if-nez v12, :cond_10

    iget v4, v5, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v4, v11, :cond_12

    or-long v17, v17, v9

    goto :goto_b

    :cond_10
    if-eqz v24, :cond_11

    iget-boolean v9, v5, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-eqz v9, :cond_11

    const/4 v9, 0x1

    if-ne v3, v9, :cond_11

    iget-boolean v9, v0, Landroid/widget/ActionMenuView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v9, :cond_11

    iget v9, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    add-int v10, v9, v25

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v12, v9, v12}, Landroid/view/View;->setPadding(IIII)V

    :cond_11
    iget v4, v5, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    const/4 v9, 0x1

    add-int/2addr v4, v9

    iput v4, v5, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    iput-boolean v9, v5, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    add-int/lit8 v3, v3, -0x1

    :cond_12
    :goto_b
    add-int/lit8 v7, v7, 0x1

    move/from16 v9, v25

    move/from16 v10, v26

    goto :goto_a

    :cond_13
    move v7, v3

    move/from16 v3, v21

    move/from16 v4, v24

    const/4 v5, 0x1

    goto/16 :goto_6

    :cond_14
    move/from16 v21, v3

    goto :goto_9

    :goto_c
    const/4 v9, 0x1

    if-nez v13, :cond_15

    if-ne v14, v9, :cond_15

    move v3, v9

    goto :goto_d

    :cond_15
    const/4 v3, 0x0

    :goto_d
    if-lez v7, :cond_22

    cmp-long v4, v17, p1

    if-eqz v4, :cond_22

    sub-int/2addr v14, v9

    if-lt v7, v14, :cond_16

    if-nez v3, :cond_16

    if-le v15, v9, :cond_22

    :cond_16
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    int-to-float v4, v4

    if-nez v3, :cond_18

    const-wide/16 v9, 0x1

    and-long v9, v17, v9

    cmp-long v3, v9, p1

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v12, 0x0

    if-eqz v3, :cond_17

    invoke-virtual {v0, v12}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/ActionMenuView$LayoutParams;

    iget-boolean v3, v3, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v3, :cond_17

    sub-float/2addr v4, v9

    :cond_17
    add-int/lit8 v3, v8, -0x1

    const/16 v19, 0x1

    shl-int v10, v19, v3

    int-to-long v10, v10

    and-long v10, v17, v10

    cmp-long v10, v10, p1

    if-eqz v10, :cond_19

    invoke-virtual {v0, v3}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/ActionMenuView$LayoutParams;

    iget-boolean v3, v3, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v3, :cond_19

    sub-float/2addr v4, v9

    goto :goto_e

    :cond_18
    const/4 v12, 0x0

    :cond_19
    :goto_e
    const/4 v3, 0x0

    cmpl-float v3, v4, v3

    if-lez v3, :cond_1a

    mul-int v7, v7, v25

    int-to-float v3, v7

    div-float/2addr v3, v4

    float-to-int v7, v3

    goto :goto_f

    :cond_1a
    move v7, v12

    :goto_f
    move v9, v5

    move v3, v12

    :goto_10
    if-ge v3, v8, :cond_21

    const/16 v19, 0x1

    shl-int v4, v19, v3

    int-to-long v4, v4

    and-long v4, v17, v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_1b

    const/4 v4, 0x1

    goto :goto_11

    :cond_1b
    invoke-virtual {v0, v3}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/ActionMenuView$LayoutParams;

    instance-of v4, v4, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v4, :cond_1d

    iput v7, v5, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    const/4 v9, 0x1

    iput-boolean v9, v5, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v3, :cond_1c

    iget-boolean v4, v5, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v4, :cond_1c

    neg-int v4, v7

    div-int/lit8 v4, v4, 0x2

    iput v4, v5, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    :cond_1c
    const/4 v4, 0x1

    const/4 v9, 0x1

    goto :goto_11

    :cond_1d
    iget-boolean v4, v5, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v4, :cond_1e

    iput v7, v5, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    const/4 v4, 0x1

    iput-boolean v4, v5, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    neg-int v9, v7

    div-int/lit8 v9, v9, 0x2

    iput v9, v5, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move v9, v4

    goto :goto_11

    :cond_1e
    const/4 v4, 0x1

    if-eqz v3, :cond_1f

    div-int/lit8 v10, v7, 0x2

    iput v10, v5, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    :cond_1f
    add-int/lit8 v10, v8, -0x1

    if-eq v3, v10, :cond_20

    div-int/lit8 v10, v7, 0x2

    iput v10, v5, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    :cond_20
    :goto_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_21
    move v5, v9

    goto :goto_12

    :cond_22
    const/4 v12, 0x0

    :goto_12
    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v5, :cond_24

    move v9, v12

    :goto_13
    if-ge v9, v8, :cond_24

    invoke-virtual {v0, v9}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/ActionMenuView$LayoutParams;

    iget-boolean v7, v5, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v7, :cond_23

    goto :goto_14

    :cond_23
    iget v7, v5, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int v7, v7, v25

    iget v5, v5, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    add-int/2addr v7, v5

    invoke-static {v7, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    :goto_14
    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    :cond_24
    if-eq v1, v3, :cond_25

    move/from16 v3, v26

    goto :goto_15

    :cond_25
    move/from16 v3, v20

    :goto_15
    invoke-virtual {v0, v2, v3}, Landroid/widget/ActionMenuView;->setMeasuredDimension(II)V

    return-void
.end method


# virtual methods
.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    if-eqz p1, :cond_0

    instance-of p0, p1, Landroid/widget/ActionMenuView$LayoutParams;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist dismissPopupMenus()V
    .locals 0

    iget-object p0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    :cond_0
    return-void
.end method

.method public greylist-max-o dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected bridge synthetic whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;
    .locals 1

    new-instance p0, Landroid/widget/ActionMenuView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(II)V

    const/16 v0, 0x10

    iput v0, p0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    return-object p0
.end method

.method protected bridge synthetic whitelist generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;
    .locals 1

    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;
    .locals 0

    if-eqz p1, :cond_2

    instance-of p0, p1, Landroid/widget/ActionMenuView$LayoutParams;

    if-eqz p0, :cond_0

    new-instance p0, Landroid/widget/ActionMenuView$LayoutParams;

    check-cast p1, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-direct {p0, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/widget/ActionMenuView$LayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-direct {p0, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget p1, p0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz p1, :cond_1

    const/16 p1, 0x10

    iput p1, p0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    :cond_1
    return-object p0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o generateOverflowButtonLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    return-object p0
.end method

.method public whitelist getMenu()Landroid/view/Menu;
    .locals 4

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    new-instance v2, Landroid/widget/ActionMenuView$MenuBuilderCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroid/widget/ActionMenuView;Landroid/widget/ActionMenuView-IA;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    new-instance v1, Landroid/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v1, p0, v3}, Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>(Landroid/widget/ActionMenuView;Landroid/widget/ActionMenuView-IA;)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v2, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/widget/ActionMenuPresenter;->setMenuView(Landroid/widget/ActionMenuView;)V

    :cond_1
    iget-object p0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object p0
.end method

.method public blacklist getOverflowBadgeText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/widget/ActionMenuView;->mOverflowBadgeText:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    iget-object p0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getPopupTheme()I
    .locals 0

    iget p0, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    return p0
.end method

.method public greylist-max-o getWindowAnimations()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected greylist-max-r hasDividerBeforeChildAt(I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result p0

    if-ge p1, p0, :cond_1

    instance-of p0, v1, Landroid/widget/ActionMenuView$ActionMenuChildView;

    if-eqz p0, :cond_1

    check-cast v1, Landroid/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v1}, Landroid/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v0

    :cond_1
    if-lez p1, :cond_2

    instance-of p0, v2, Landroid/widget/ActionMenuView$ActionMenuChildView;

    if-eqz p0, :cond_2

    check-cast v2, Landroid/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v2}, Landroid/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result p0

    or-int/2addr p0, v0

    return p0

    :cond_2
    return v0
.end method

.method public whitelist hideOverflowMenu()Z
    .locals 0

    iget-object p0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-o initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-void
.end method

.method public greylist-max-o invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1

    iget-object p0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public greylist isOverflowMenuShowPending()Z
    .locals 0

    iget-object p0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isOverflowMenuShowing()Z
    .locals 0

    iget-object p0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist isOverflowReserved()Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/ActionMenuView;->mReserveOverflow:Z

    return p0
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p1, v1}, Landroid/widget/ActionMenuPresenter;->updateMenuView(Z)V

    iget-object p1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p1}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p1}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    iget-object p1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p1}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    :cond_0
    iget-object p1, p0, Landroid/widget/ActionMenuView;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/internal/R$styleable;->View:[I

    const v2, 0x10102d8

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 v0, 0x44

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/widget/ActionMenuView;->mOriginalStartPadding:I

    const/16 v2, 0x45

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/ActionMenuView;->mOriginalEndPadding:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Landroid/widget/ActionMenuView;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/internal/R$styleable;->View:[I

    const v5, 0x10102f6

    invoke-virtual {p1, v3, v4, v5, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowStartPadding:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowEndPadding:I

    const/16 v0, 0x24

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ActionMenuView;->mOverflowButtonMinWidth:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public whitelist onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->dismissPopupMenus()V

    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-nez v1, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v1

    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getDividerWidth()I

    move-result v3

    sub-int v4, p4, p2

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v5

    sub-int v5, v4, v5

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->isLayoutRtl()Z

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const/16 v11, 0x8

    const/4 v12, 0x1

    if-ge v8, v1, :cond_5

    invoke-virtual {v0, v8}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-ne v14, v11, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/ActionMenuView$LayoutParams;

    iget-boolean v14, v11, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v14, :cond_4

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v0, v8}, Landroid/widget/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v14

    if-eqz v14, :cond_2

    add-int/2addr v9, v3

    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v15

    iget v11, v11, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v15, v11

    add-int v11, v15, v9

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getWidth()I

    move-result v15

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    iget v11, v11, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int v11, v15, v11

    sub-int v15, v11, v9

    :goto_1
    div-int/lit8 v16, v14, 0x2

    sub-int v7, v2, v16

    add-int/2addr v14, v7

    invoke-virtual {v13, v15, v7, v11, v14}, Landroid/view/View;->layout(IIII)V

    sub-int/2addr v5, v9

    move v9, v12

    goto :goto_2

    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v12, v11, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v7, v12

    iget v11, v11, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v7, v11

    sub-int/2addr v5, v7

    invoke-virtual {v0, v8}, Landroid/widget/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    add-int/lit8 v10, v10, 0x1

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    if-ne v1, v12, :cond_6

    if-nez v9, :cond_6

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    div-int/lit8 v5, v3, 0x2

    sub-int/2addr v2, v5

    add-int/2addr v1, v4

    add-int/2addr v3, v2

    invoke-virtual {v0, v4, v2, v1, v3}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_6
    xor-int/lit8 v3, v9, 0x1

    sub-int/2addr v10, v3

    if-lez v10, :cond_7

    div-int v3, v5, v10

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eqz v6, :cond_a

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    move v7, v4

    :goto_4
    if-ge v7, v1, :cond_d

    invoke-virtual {v0, v7}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_9

    iget-boolean v8, v6, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v8, :cond_8

    goto :goto_5

    :cond_8
    iget v8, v6, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int/2addr v5, v8

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    sub-int v12, v5, v8

    add-int/2addr v9, v10

    invoke-virtual {v4, v12, v10, v5, v9}, Landroid/view/View;->layout(IIII)V

    iget v4, v6, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v8, v4

    add-int/2addr v8, v3

    sub-int/2addr v5, v8

    :cond_9
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v5

    move v7, v4

    :goto_6
    if-ge v7, v1, :cond_d

    invoke-virtual {v0, v7}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_c

    iget-boolean v8, v6, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v8, :cond_b

    goto :goto_7

    :cond_b
    iget v8, v6, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v5, v8

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    add-int v12, v5, v8

    add-int/2addr v9, v10

    invoke-virtual {v4, v5, v10, v12, v9}, Landroid/view/View;->layout(IIII)V

    iget v4, v6, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v8, v4

    add-int/2addr v8, v3

    add-int/2addr v5, v8

    :cond_c
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_d
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 7

    iget-boolean v0, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iput-boolean v1, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-eq v0, v1, :cond_1

    iput v4, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-boolean v1, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_2

    iget v2, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    if-eq v0, v2, :cond_2

    iput v0, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    invoke-virtual {v1, v3}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v0

    iget-boolean v1, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v1, :cond_3

    if-lez v0, :cond_3

    invoke-direct {p0, p1, p2}, Landroid/widget/ActionMenuView;->onMeasureExactFormat(II)V

    return-void

    :cond_3
    move v1, v4

    :goto_1
    if-ge v1, v0, :cond_9

    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/ActionMenuView$LayoutParams;

    iput v4, v3, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    iput v4, v3, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    instance-of v5, v2, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v5, :cond_6

    iget v5, p0, Landroid/widget/ActionMenuView;->mOriginalStartPadding:I

    iget v6, p0, Landroid/widget/ActionMenuView;->mOriginalEndPadding:I

    invoke-virtual {v2, v5, v4, v6, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-boolean v5, p0, Landroid/widget/ActionMenuView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v5, :cond_8

    add-int/lit8 v5, v0, -0x1

    if-ne v1, v5, :cond_8

    move-object v5, v2

    check-cast v5, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getLayoutDirection()I

    move-result v5

    if-nez v5, :cond_4

    iget v5, p0, Landroid/widget/ActionMenuView;->mOriginalEndPadding:I

    iput v5, v3, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_4
    iget v5, p0, Landroid/widget/ActionMenuView;->mOriginalEndPadding:I

    iput v5, v3, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_5
    iget v2, p0, Landroid/widget/ActionMenuView;->mOverflowButtonMinWidth:I

    invoke-virtual {v5, v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->setMinWidth(I)V

    invoke-virtual {v5, v3}, Lcom/android/internal/view/menu/ActionMenuItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowStartPadding:I

    iget v3, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowEndPadding:I

    invoke-virtual {v5, v2, v4, v3, v4}, Lcom/android/internal/view/menu/ActionMenuItemView;->setPaddingRelative(IIII)V

    goto :goto_2

    :cond_6
    iget-boolean v3, v3, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v3, :cond_8

    instance-of v3, v2, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;

    if-eqz v3, :cond_7

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowStartPadding:I

    iget v5, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowEndPadding:I

    invoke-virtual {v2, v3, v4, v5, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget v3, p0, Landroid/widget/ActionMenuView;->mOverflowButtonMinWidth:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumWidth(I)V

    check-cast v2, Landroid/widget/TextView;

    iget v3, p0, Landroid/widget/ActionMenuView;->mOverflowButtonMinWidth:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_2

    :cond_7
    iget v3, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowStartPadding:I

    iget v5, p0, Landroid/widget/ActionMenuView;->mOriginalOverflowEndPadding:I

    invoke-virtual {v2, v3, v4, v5, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget v3, p0, Landroid/widget/ActionMenuView;->mOverflowButtonMinWidth:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumWidth(I)V

    :cond_8
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public greylist peekMenu()Lcom/android/internal/view/menu/MenuBuilder;
    .locals 0

    iget-object p0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object p0
.end method

.method blacklist semGetSumOfDigitsInBadges()I
    .locals 4

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getBadgeText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/ActionMenuView;->getNumericValue(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public greylist setExpandedActionViewsExclusive(Z)V
    .locals 0

    iget-object p0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    :cond_0
    return-void
.end method

.method public greylist setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    iput-object p2, p0, Landroid/widget/ActionMenuView;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    return-void
.end method

.method public whitelist setOnMenuItemClickListener(Landroid/widget/ActionMenuView$OnMenuItemClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    return-void
.end method

.method public blacklist setOverflowBadgeText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ActionMenuView;->mOverflowBadgeText:Ljava/lang/String;

    return-void
.end method

.method public whitelist setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    iget-object p0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuPresenter;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public greylist-max-o setOverflowReserved(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ActionMenuView;->mReserveOverflow:Z

    return-void
.end method

.method public whitelist setPopupTheme(I)V
    .locals 2

    iget v0, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/widget/ActionMenuView;->mContext:Landroid/content/Context;

    iput-object p1, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    return-void

    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    :cond_1
    return-void
.end method

.method public greylist-max-o setPresenter(Landroid/widget/ActionMenuPresenter;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Landroid/widget/ActionMenuPresenter;->setMenuView(Landroid/widget/ActionMenuView;)V

    return-void
.end method

.method public whitelist showOverflowMenu()Z
    .locals 0

    iget-object p0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

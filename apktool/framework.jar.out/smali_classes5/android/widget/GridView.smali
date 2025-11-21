.class public Landroid/widget/GridView;
.super Landroid/widget/AbsListView;
.source "GridView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/GridView$StretchMode;
    }
.end annotation


# static fields
.field public static final whitelist AUTO_FIT:I = -0x1

.field public static final whitelist NO_STRETCH:I = 0x0

.field public static final whitelist STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final whitelist STRETCH_SPACING:I = 0x1

.field public static final whitelist STRETCH_SPACING_UNIFORM:I = 0x3

.field private static final blacklist TAG:Ljava/lang/String; = "GridView"


# instance fields
.field private blacklist mAddDeleteGridAnimator:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

.field private greylist-max-p mColumnWidth:I

.field private blacklist mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

.field private greylist-max-o mGravity:I

.field private greylist mHorizontalSpacing:I

.field private greylist-max-p mNumColumns:I

.field private greylist-max-o mReferenceView:Landroid/view/View;

.field private greylist-max-o mReferenceViewInSelectedRow:Landroid/view/View;

.field private greylist mRequestedColumnWidth:I

.field private greylist mRequestedHorizontalSpacing:I

.field private greylist-max-p mRequestedNumColumns:I

.field private blacklist mSelectZeroPositionOnKeyTab:Z

.field private greylist-max-o mStretchMode:I

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private greylist mVerticalSpacing:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDndGridAnimator(Landroid/widget/GridView;)Lcom/samsung/android/animation/SemDragAndDropGridAnimator;
    .locals 0

    iget-object p0, p0, Landroid/widget/GridView;->mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/GridView;->mNumColumns:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    iput v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    const/4 v2, 0x2

    iput v2, p0, Landroid/widget/GridView;->mStretchMode:I

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    iput-object v3, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    const v3, 0x800003

    iput v3, p0, Landroid/widget/GridView;->mGravity:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Landroid/widget/GridView;->mSelectZeroPositionOnKeyTab:Z

    sget-object v3, Lcom/android/internal/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    sget-object v6, Lcom/android/internal/R$styleable;->GridView:[I

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move v9, p3

    move v10, p4

    invoke-virtual/range {v4 .. v10}, Landroid/widget/GridView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/4 p0, 0x1

    invoke-virtual {v8, p0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    invoke-virtual {v8, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    const/4 p1, 0x3

    invoke-virtual {v8, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {v4, p1}, Landroid/widget/GridView;->setStretchMode(I)V

    :cond_0
    const/4 p1, 0x4

    invoke-virtual {v8, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {v4, p1}, Landroid/widget/GridView;->setColumnWidth(I)V

    :cond_1
    const/4 p1, 0x5

    invoke-virtual {v8, p1, p0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    invoke-virtual {v4, p0}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {v8, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    if-ltz p0, :cond_2

    invoke-virtual {v4, p0}, Landroid/widget/GridView;->setGravity(I)V

    :cond_2
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private greylist-max-o adjustForBottomFadingEdge(Landroid/view/View;II)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    if-le v0, p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    sub-int/2addr p1, p3

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    neg-int p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    :cond_0
    return-void
.end method

.method private greylist-max-o adjustForTopFadingEdge(Landroid/view/View;II)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    if-ge v0, p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    sub-int/2addr p3, p1

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    :cond_0
    return-void
.end method

.method private greylist-max-o adjustViewsUpOrDown()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int/2addr v0, v1

    :cond_0
    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v0

    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    if-ge v3, v0, :cond_3

    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v1, v0

    :cond_3
    if-lez v1, :cond_4

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    if-eqz v2, :cond_5

    neg-int v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    :cond_5
    return-void
.end method

.method private greylist-max-o commonKey(IILandroid/view/KeyEvent;)Z
    .locals 8

    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroid/widget/GridView;->mDataChanged:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eq v0, v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/GridView;->keyPressed()V

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    :cond_3
    :goto_0
    iget-boolean v4, p0, Landroid/widget/GridView;->mIsHoveredByMouse:Z

    if-eqz v4, :cond_4

    iput-boolean v1, p0, Landroid/widget/GridView;->mIsHoveredByMouse:Z

    const-string v4, "GridView"

    const-string v5, "mIsHoveredByMouse false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v4, 0x2

    if-nez v2, :cond_18

    if-eq v0, v3, :cond_18

    const/16 v5, 0x3d

    if-eq p1, v5, :cond_15

    const/16 v5, 0x5c

    const/16 v6, 0x21

    if-eq p1, v5, :cond_13

    const/16 v5, 0x5d

    const/16 v7, 0x82

    if-eq p1, v5, :cond_11

    const/16 v5, 0x7a

    if-eq p1, v5, :cond_10

    const/16 v5, 0x7b

    if-eq p1, v5, :cond_f

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-boolean v5, p0, Landroid/widget/GridView;->mSelectZeroPositionOnKeyTab:Z

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_18

    :cond_6
    iget v2, p0, Landroid/widget/GridView;->mSelectedPosition:I

    iput v2, p0, Landroid/widget/GridView;->mSemCurrentFocusPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_7

    const/16 v2, 0x42

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    :goto_1
    move v2, v3

    goto/16 :goto_5

    :pswitch_1
    iget-boolean v5, p0, Landroid/widget/GridView;->mSelectZeroPositionOnKeyTab:Z

    if-eqz v5, :cond_9

    :cond_8
    :goto_2
    move v2, v1

    goto/16 :goto_5

    :cond_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_18

    :cond_a
    iget v2, p0, Landroid/widget/GridView;->mSelectedPosition:I

    iput v2, p0, Landroid/widget/GridView;->mSemCurrentFocusPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_7

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_1

    :pswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_1

    :cond_c
    :goto_3
    iget v2, p0, Landroid/widget/GridView;->mSelectedPosition:I

    iput v2, p0, Landroid/widget/GridView;->mSemCurrentFocusPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_1

    :pswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_4

    :cond_d
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_1

    :cond_e
    :goto_4
    iget v2, p0, Landroid/widget/GridView;->mSelectedPosition:I

    iput v2, p0, Landroid/widget/GridView;->mSemCurrentFocusPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_1

    :cond_f
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_1

    :cond_10
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_1

    :cond_11
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_1

    :cond_12
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_1

    :cond_13
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_1

    :cond_14
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_1

    :cond_15
    iget-boolean v5, p0, Landroid/widget/GridView;->mSelectZeroPositionOnKeyTab:Z

    if-eqz v5, :cond_16

    invoke-virtual {p0}, Landroid/widget/GridView;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v6

    sub-int/2addr v6, v3

    if-ne v5, v6, :cond_16

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelection(I)V

    return v3

    :cond_16
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->sequenceScroll(I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_1

    :cond_17
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->sequenceScroll(I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_1

    :cond_18
    :goto_5
    if-eqz v2, :cond_19

    return v3

    :cond_19
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/GridView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1a

    return v3

    :cond_1a
    if-eqz v0, :cond_1d

    if-eq v0, v3, :cond_1c

    if-eq v0, v4, :cond_1b

    return v1

    :cond_1b
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_1c
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_1d
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o correctTooHigh(III)V
    .locals 4

    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v0, p3

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_3

    if-lez p3, :cond_3

    sub-int/2addr p3, v1

    invoke-virtual {p0, p3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    iget v0, p0, Landroid/widget/GridView;->mBottom:I

    iget v2, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    sub-int/2addr v0, p3

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v2

    if-lez v0, :cond_3

    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-gtz v3, :cond_0

    iget-object v3, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_3

    :cond_0
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-lez v0, :cond_3

    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v2, :cond_2

    move p1, v1

    :cond_2
    sub-int/2addr v0, p1

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-direct {p0, v0, p1}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    :cond_3
    return-void
.end method

.method private greylist-max-o correctTooLow(III)V
    .locals 6

    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v0, :cond_3

    if-lez p3, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/widget/GridView;->mBottom:I

    iget v3, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    sub-int/2addr v0, v1

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v4, p3

    const/4 p3, 0x1

    sub-int/2addr v4, p3

    if-lez v0, :cond_3

    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v5, p3

    if-lt v4, v5, :cond_0

    if-le v3, v2, :cond_3

    :cond_0
    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v5, p3

    if-ne v4, v5, :cond_1

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    neg-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v0, p3

    if-ge v4, v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    move p1, p3

    :cond_2
    add-int/2addr v4, p1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int/2addr p1, p2

    invoke-direct {p0, v4, p1}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    :cond_3
    return-void
.end method

.method private greylist-max-r determineColumns(I)Z
    .locals 8

    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    iget v1, p0, Landroid/widget/GridView;->mStretchMode:I

    iget v2, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    iget v3, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    const/4 v4, -0x1

    const/4 v5, 0x2

    if-ne v3, v4, :cond_1

    if-lez v2, :cond_0

    add-int v3, p1, v0

    add-int v4, v2, v0

    div-int/2addr v3, v4

    iput v3, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_0

    :cond_0
    iput v5, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_0

    :cond_1
    iput v3, p0, Landroid/widget/GridView;->mNumColumns:I

    :goto_0
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    const/4 v4, 0x1

    if-gtz v3, :cond_2

    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    :cond_2
    const/4 v3, 0x0

    if-eqz v1, :cond_9

    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    mul-int v7, v6, v2

    sub-int/2addr p1, v7

    add-int/lit8 v7, v6, -0x1

    mul-int/2addr v7, v0

    sub-int/2addr p1, v7

    if-gez p1, :cond_3

    move v3, v4

    :cond_3
    if-eq v1, v4, :cond_7

    if-eq v1, v5, :cond_6

    const/4 v5, 0x3

    if-eq v1, v5, :cond_4

    return v3

    :cond_4
    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    if-le v6, v4, :cond_5

    add-int/2addr v6, v4

    div-int/2addr p1, v6

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    return v3

    :cond_5
    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    return v3

    :cond_6
    div-int/2addr p1, v6

    add-int/2addr v2, p1

    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    return v3

    :cond_7
    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    if-le v6, v4, :cond_8

    sub-int/2addr v6, v4

    div-int/2addr p1, v6

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    return v3

    :cond_8
    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    return v3

    :cond_9
    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    return v3
.end method

.method private greylist-max-p fillDown(II)Landroid/view/View;
    .locals 4

    iget v0, p0, Landroid/widget/GridView;->mBottom:I

    iget v1, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/GridView;->mGroupFlags:I

    const/16 v2, 0x22

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    if-ge p2, v0, :cond_2

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    if-ge p1, v2, :cond_2

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    move-object v3, p2

    :cond_1
    iget-object p2, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    iget v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr p2, v1

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr p1, v1

    goto :goto_0

    :cond_2
    iget p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget p2, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    add-int/2addr p2, v0

    sub-int/2addr p2, v1

    invoke-virtual {p0, p1, p2}, Landroid/widget/GridView;->setVisibleRangeHint(II)V

    return-object v3
.end method

.method private greylist-max-o fillFromBottom(II)Landroid/view/View;
    .locals 2

    iget v0, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    iget p1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 p1, p1, -0x1

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v1, v0, v1

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o fillFromSelection(III)Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v0

    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    iget-boolean v4, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v5, 0x1

    if-nez v4, :cond_0

    rem-int v4, v1, v2

    sub-int/2addr v1, v4

    const/4 v4, -0x1

    goto :goto_0

    :cond_0
    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v1, v5

    rem-int v6, v4, v2

    sub-int/2addr v4, v6

    sub-int v4, v1, v4

    sub-int v1, v4, v2

    add-int/2addr v1, v5

    const/4 v6, 0x0

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    invoke-direct {p0, p2, v0, v1}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result p2

    invoke-direct {p0, p3, v0, v2, v1}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result p3

    iget-boolean v0, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-direct {p0, v0, p1, v5}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object p1

    iput v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-object v0, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    iget-boolean p2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez p2, :cond_2

    sub-int p2, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p3

    sub-int/2addr p3, v3

    invoke-direct {p0, p2, p3}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p2

    add-int/2addr p2, v3

    invoke-direct {p0, v1, p2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    return-object p1

    :cond_2
    add-int/2addr v4, v2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p2

    add-int/2addr p2, v3

    invoke-direct {p0, v4, p2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    sub-int/2addr v1, v5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-direct {p0, v1, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    return-object p1
.end method

.method private greylist-max-o fillFromTop(I)Landroid/view/View;
    .locals 3

    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    :cond_0
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o fillSelection(II)Landroid/view/View;
    .locals 9

    invoke-virtual {p0}, Landroid/widget/GridView;->reconcileSelectedPosition()I

    move-result v0

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    iget v2, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v4, 0x1

    if-nez v3, :cond_0

    rem-int v3, v0, v1

    sub-int/2addr v0, v3

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v0, v4

    rem-int v5, v3, v1

    sub-int/2addr v3, v5

    sub-int v3, v0, v3

    sub-int v0, v3, v1

    add-int/2addr v0, v4

    const/4 v5, 0x0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v5

    invoke-direct {p0, p1, v5, v0}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v6

    iget-boolean v7, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v7, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    move v7, v0

    :goto_1
    invoke-direct {p0, v7, v6, v4}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v6

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-object v7, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    iget-boolean v8, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v8, :cond_2

    add-int p1, v0, v1

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {p0, p1, v3}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    invoke-direct {p0, p2}, Landroid/widget/GridView;->pinToBottom(I)V

    sub-int/2addr v0, v1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-direct {p0, v0, p1}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    return-object v6

    :cond_2
    invoke-direct {p0, p2, v5, v1, v0}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result p2

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr p2, v5

    invoke-virtual {p0, p2}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    sub-int/2addr v0, v4

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-direct {p0, v0, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-direct {p0, p1}, Landroid/widget/GridView;->pinToTop(I)V

    add-int/2addr v3, v1

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int/2addr p1, v2

    invoke-direct {p0, v3, p1}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    return-object v6
.end method

.method private greylist-max-o fillSpecific(II)Landroid/view/View;
    .locals 7

    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    rem-int v1, p1, v0

    sub-int/2addr p1, v1

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    iget p1, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr p1, v2

    rem-int v3, v1, v0

    sub-int/2addr v1, v3

    sub-int v1, p1, v1

    sub-int p1, v1, v0

    add-int/2addr p1, v2

    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, p1

    :goto_1
    invoke-direct {p0, v3, p2, v2}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object p2

    iput p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    if-nez v3, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    iget-boolean v5, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v5, :cond_3

    sub-int v1, p1, v0

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-direct {p0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int/2addr p1, v0

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v4

    invoke-direct {p0, p1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_5

    invoke-direct {p0, v0, v4, v2}, Landroid/widget/GridView;->correctTooHigh(III)V

    goto :goto_2

    :cond_3
    add-int/2addr v1, v0

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {p0, v1, v5}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    sub-int/2addr p1, v2

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-direct {p0, p1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_4

    invoke-direct {p0, v0, v4, v2}, Landroid/widget/GridView;->correctTooLow(III)V

    :cond_4
    move-object v6, v1

    move-object v1, p1

    move-object p1, v6

    :cond_5
    :goto_2
    if-eqz p2, :cond_6

    return-object p2

    :cond_6
    if-eqz v1, :cond_7

    return-object v1

    :cond_7
    return-object p1
.end method

.method private greylist-max-p fillUp(II)Landroid/view/View;
    .locals 4

    iget v0, p0, Landroid/widget/GridView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-le p2, v0, :cond_2

    if-ltz p1, :cond_2

    invoke-direct {p0, p1, p2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    move-object v2, p2

    :cond_1
    iget-object p2, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    iget v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int/2addr p2, v1

    iput p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_2
    iget-boolean p2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz p2, :cond_3

    add-int/lit8 p1, p1, 0x1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    :cond_3
    iget p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget p2, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    add-int/2addr p2, v0

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p1, p2}, Landroid/widget/GridView;->setVisibleRangeHint(II)V

    return-object v2
.end method

.method private greylist-max-o getBottomSelectionPixel(IIII)I
    .locals 0

    add-int/2addr p4, p3

    add-int/lit8 p4, p4, -0x1

    iget p0, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 p0, p0, -0x1

    if-ge p4, p0, :cond_0

    sub-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method private greylist-max-o getTopSelectionPixel(III)I
    .locals 0

    if-lez p3, :cond_0

    add-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method private greylist-max-o isCandidateSelection(II)Z
    .locals 6

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    sub-int v2, v1, p1

    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    iget p0, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v2, p1, p0

    sub-int v2, p1, v2

    add-int/2addr p0, v2

    sub-int/2addr p0, v5

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v0, v2, p0

    sub-int/2addr v2, v0

    sub-int v0, v1, v2

    sub-int p0, v0, p0

    add-int/2addr p0, v5

    invoke-static {v4, p0}, Ljava/lang/Math;->max(II)I

    move-result v2

    move p0, v0

    :goto_0
    if-eq p2, v5, :cond_b

    const/4 v0, 0x2

    if-eq p2, v0, :cond_9

    const/16 v0, 0x11

    if-eq p2, v0, :cond_7

    const/16 v0, 0x21

    if-eq p2, v0, :cond_5

    const/16 p0, 0x42

    if-eq p2, p0, :cond_3

    const/16 p0, 0x82

    if-ne p2, p0, :cond_2

    if-nez v2, :cond_1

    return v5

    :cond_1
    return v4

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-ne p1, v2, :cond_4

    return v5

    :cond_4
    return v4

    :cond_5
    if-ne p0, v1, :cond_6

    return v5

    :cond_6
    return v4

    :cond_7
    if-ne p1, p0, :cond_8

    return v5

    :cond_8
    return v4

    :cond_9
    if-ne p1, v2, :cond_a

    if-nez v2, :cond_a

    return v5

    :cond_a
    return v4

    :cond_b
    if-ne p1, p0, :cond_c

    if-ne p0, v1, :cond_c

    return v5

    :cond_c
    return v4
.end method

.method private greylist-max-o makeAndAddView(IIZIZI)Landroid/view/View;
    .locals 9

    iget-boolean v1, p0, Landroid/widget/GridView;->mDataChanged:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/widget/GridView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v1}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Landroid/widget/GridView;->mIsScrap:[Z

    const/4 v4, 0x0

    aget-boolean v7, v3, v4

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    return-object v1
.end method

.method private greylist-max-o makeRow(IIZ)Landroid/view/View;
    .locals 19

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/GridView;->mColumnWidth:I

    iget v8, v0, Landroid/widget/GridView;->mHorizontalSpacing:I

    invoke-virtual {v0}, Landroid/widget/GridView;->isLayoutRtl()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v9, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/GridView;->getWidth()I

    move-result v3

    iget-object v4, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v7

    iget v4, v0, Landroid/widget/GridView;->mStretchMode:I

    if-ne v4, v2, :cond_0

    move v2, v8

    goto :goto_0

    :cond_0
    move v2, v9

    :goto_0
    sub-int/2addr v3, v2

    goto :goto_2

    :cond_1
    iget-object v3, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/widget/GridView;->mStretchMode:I

    if-ne v4, v2, :cond_2

    move v2, v8

    goto :goto_1

    :cond_2
    move v2, v9

    :goto_1
    add-int/2addr v3, v2

    :goto_2
    iget-boolean v2, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v10, -0x1

    const/4 v11, 0x1

    if-nez v2, :cond_3

    iget v2, v0, Landroid/widget/GridView;->mNumColumns:I

    add-int v2, p1, v2

    iget v4, v0, Landroid/widget/GridView;->mItemCount:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    move/from16 v12, p1

    move v13, v2

    goto :goto_4

    :cond_3
    add-int/lit8 v2, p1, 0x1

    iget v4, v0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v4, p1, v4

    add-int/2addr v4, v11

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int v5, v2, v4

    iget v6, v0, Landroid/widget/GridView;->mNumColumns:I

    if-ge v5, v6, :cond_5

    sub-int/2addr v6, v5

    add-int v5, v7, v8

    mul-int/2addr v6, v5

    if-eqz v1, :cond_4

    move v5, v10

    goto :goto_3

    :cond_4
    move v5, v11

    :goto_3
    mul-int/2addr v5, v6

    add-int/2addr v3, v5

    :cond_5
    move v13, v2

    move v12, v4

    :goto_4
    invoke-virtual {v0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v14

    invoke-virtual {v0}, Landroid/widget/GridView;->touchModeDrawsInPressedState()Z

    move-result v15

    iget v2, v0, Landroid/widget/GridView;->mSelectedPosition:I

    if-eqz v1, :cond_6

    move/from16 v16, v10

    goto :goto_5

    :cond_6
    move/from16 v16, v11

    :goto_5
    const/4 v1, 0x0

    move-object/from16 v17, v1

    move v4, v3

    move v3, v12

    :goto_6
    if-ge v3, v13, :cond_c

    if-ne v3, v2, :cond_7

    move v5, v11

    goto :goto_7

    :cond_7
    move v5, v9

    :goto_7
    if-eqz p3, :cond_8

    move v6, v10

    goto :goto_8

    :cond_8
    sub-int v1, v3, v12

    move v6, v1

    :goto_8
    move/from16 v18, v2

    move v1, v3

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/GridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v6

    mul-int v2, v16, v7

    add-int/2addr v4, v2

    add-int/lit8 v2, v13, -0x1

    if-ge v1, v2, :cond_9

    mul-int v2, v16, v8

    add-int/2addr v4, v2

    :cond_9
    if-eqz v5, :cond_b

    if-nez v14, :cond_a

    if-eqz v15, :cond_b

    :cond_a
    move-object/from16 v17, v6

    :cond_b
    add-int/lit8 v3, v1, 0x1

    move-object v1, v6

    move/from16 v2, v18

    goto :goto_6

    :cond_c
    iput-object v1, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    if-eqz v17, :cond_d

    iput-object v1, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    :cond_d
    return-object v17
.end method

.method private greylist-max-o moveSelection(III)Landroid/view/View;
    .locals 9

    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v0

    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    iget-boolean v4, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_0

    sub-int p1, v1, p1

    rem-int v4, p1, v2

    sub-int/2addr p1, v4

    rem-int v4, v1, v2

    sub-int/2addr v1, v4

    const/4 v4, -0x1

    goto :goto_0

    :cond_0
    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v4, v6

    sub-int/2addr v4, v1

    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v7, v6

    rem-int v8, v4, v2

    sub-int/2addr v4, v8

    sub-int v4, v7, v4

    sub-int v7, v4, v2

    add-int/2addr v7, v6

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v8, v6

    sub-int/2addr v1, p1

    sub-int/2addr v8, v1

    iget p1, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr p1, v6

    rem-int v1, v8, v2

    sub-int/2addr v8, v1

    sub-int/2addr p1, v8

    sub-int/2addr p1, v2

    add-int/2addr p1, v6

    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    move v1, v7

    :goto_0
    sub-int p1, v1, p1

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result p2

    invoke-direct {p0, p3, v0, v2, v1}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result p3

    iput v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-lez p1, :cond_3

    iget-object p1, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    :goto_1
    iget-boolean p1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz p1, :cond_2

    move p1, v4

    goto :goto_2

    :cond_2
    move p1, v1

    :goto_2
    add-int/2addr v5, v3

    invoke-direct {p0, p1, v5, v6}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    goto :goto_7

    :cond_3
    if-gez p1, :cond_6

    iget-object p1, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    if-nez p1, :cond_4

    move p1, v5

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    :goto_3
    iget-boolean v0, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v0, :cond_5

    move v0, v4

    goto :goto_4

    :cond_5
    move v0, v1

    :goto_4
    sub-int/2addr p1, v3

    invoke-direct {p0, v0, p1, v5}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    goto :goto_7

    :cond_6
    iget-object p1, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    :goto_5
    iget-boolean p1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz p1, :cond_8

    move p1, v4

    goto :goto_6

    :cond_8
    move p1, v1

    :goto_6
    invoke-direct {p0, p1, v5, v6}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    :goto_7
    iget-boolean p2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez p2, :cond_9

    sub-int p2, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p3

    sub-int/2addr p3, v3

    invoke-direct {p0, p2, p3}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p2

    add-int/2addr p2, v3

    invoke-direct {p0, v1, p2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    return-object p1

    :cond_9
    add-int/2addr v4, v2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p2

    add-int/2addr p2, v3

    invoke-direct {p0, v4, p2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    sub-int/2addr v1, v6

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-direct {p0, v1, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    return-object p1
.end method

.method private greylist-max-o pinToBottom(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v1, v0

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr p1, v0

    if-lez p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    :cond_0
    return-void
.end method

.method private greylist-max-o pinToTop(I)V
    .locals 1

    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p1, v0

    if-gez p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    :cond_0
    return-void
.end method

.method private greylist-max-o setupChild(Landroid/view/View;IIZIZZI)V
    .locals 13

    move v0, p2

    move/from16 v1, p8

    const-string/jumbo v2, "setupGridItem"

    const-wide/16 v3, 0x8

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz p6, :cond_0

    invoke-virtual {p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v7

    if-eq v6, v7, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    move v7, v5

    :goto_1
    iget v8, p0, Landroid/widget/GridView;->mTouchMode:I

    if-lez v8, :cond_2

    const/4 v9, 0x3

    if-ge v8, v9, :cond_2

    iget v8, p0, Landroid/widget/GridView;->mMotionPosition:I

    if-ne v8, v0, :cond_2

    move v8, v2

    goto :goto_2

    :cond_2
    move v8, v5

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v9

    if-eq v8, v9, :cond_3

    move v9, v2

    goto :goto_3

    :cond_3
    move v9, v5

    :goto_3
    if-eqz p7, :cond_5

    if-nez v7, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_4

    :cond_4
    move v10, v5

    goto :goto_5

    :cond_5
    :goto_4
    move v10, v2

    :goto_5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/AbsListView$LayoutParams;

    if-nez v11, :cond_6

    invoke-virtual {p0}, Landroid/widget/GridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/AbsListView$LayoutParams;

    :cond_6
    iget-object v12, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v12, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v12

    iput v12, v11, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    iget-object v12, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v12, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v12

    iput-boolean v12, v11, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    if-eqz v7, :cond_7

    invoke-virtual {p1, v6}, Landroid/view/View;->setSelected(Z)V

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Landroid/widget/GridView;->requestFocus()Z

    :cond_7
    if-eqz v9, :cond_8

    invoke-virtual {p1, v8}, Landroid/view/View;->setPressed(Z)V

    :cond_8
    iget v6, p0, Landroid/widget/GridView;->mChoiceMode:I

    if-eqz v6, :cond_a

    iget-object v6, p0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v6, :cond_a

    instance-of v6, p1, Landroid/widget/Checkable;

    if-eqz v6, :cond_9

    move-object v6, p1

    check-cast v6, Landroid/widget/Checkable;

    iget-object v7, p0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    invoke-interface {v6, v7}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_6

    :cond_9
    invoke-virtual {p0}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_a

    iget-object v6, p0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {p1, v6}, Landroid/view/View;->setActivated(Z)V

    :cond_a
    :goto_6
    if-eqz p7, :cond_c

    iget-boolean v6, v11, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    if-nez v6, :cond_c

    invoke-virtual {p0, p1, v1, v11}, Landroid/widget/GridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    if-eqz p7, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    iget v1, v1, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    if-eq v1, v0, :cond_d

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    goto :goto_7

    :cond_c
    iput-boolean v5, v11, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    invoke-virtual {p0, p1, v1, v11, v2}, Landroid/widget/GridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    :cond_d
    :goto_7
    if-eqz v10, :cond_e

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, v11, Landroid/widget/AbsListView$LayoutParams;->height:I

    invoke-static {v0, v5, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    iget v1, p0, Landroid/widget/GridView;->mColumnWidth:I

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v6, v11, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {v1, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    goto :goto_8

    :cond_e
    invoke-virtual/range {p0 .. p1}, Landroid/widget/GridView;->cleanupLayoutState(Landroid/view/View;)V

    :goto_8
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-eqz p4, :cond_f

    move/from16 v5, p3

    goto :goto_9

    :cond_f
    sub-int v5, p3, v1

    :goto_9
    invoke-virtual {p0}, Landroid/widget/GridView;->getLayoutDirection()I

    move-result v6

    iget v7, p0, Landroid/widget/GridView;->mGravity:I

    invoke-static {v7, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    and-int/lit8 v6, v6, 0x7

    if-eq v6, v2, :cond_11

    const/4 v7, 0x5

    if-eq v6, v7, :cond_10

    move/from16 v6, p5

    goto :goto_a

    :cond_10
    iget v6, p0, Landroid/widget/GridView;->mColumnWidth:I

    add-int v6, p5, v6

    sub-int/2addr v6, v0

    goto :goto_a

    :cond_11
    iget v6, p0, Landroid/widget/GridView;->mColumnWidth:I

    sub-int/2addr v6, v0

    div-int/lit8 v6, v6, 0x2

    add-int v6, p5, v6

    :goto_a
    if-eqz v10, :cond_12

    add-int/2addr v0, v6

    add-int/2addr v1, v5

    invoke-virtual {p1, v6, v5, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_b

    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v6, v0

    invoke-virtual {p1, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v5, v0

    invoke-virtual {p1, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    :goto_b
    iget-boolean p0, p0, Landroid/widget/GridView;->mCachingStarted:Z

    if-eqz p0, :cond_13

    invoke-virtual {p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result p0

    if-nez p0, :cond_13

    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_13
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method


# virtual methods
.method greylist-max-o arrowScroll(I)Z
    .locals 10

    iget v0, p0, Landroid/widget/GridView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    div-int v2, v0, v1

    mul-int/2addr v2, v1

    add-int v5, v2, v1

    sub-int/2addr v5, v3

    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v6, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v5, v3

    div-int/2addr v2, v1

    mul-int/2addr v2, v1

    sub-int/2addr v5, v2

    sub-int v2, v5, v1

    add-int/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_0
    const/16 v6, 0x21

    const/4 v7, 0x6

    if-eq p1, v6, :cond_2

    const/16 v6, 0x82

    if-eq p1, v6, :cond_1

    goto :goto_2

    :cond_1
    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v6, v3

    if-ge v5, v6, :cond_3

    iput v7, p0, Landroid/widget/GridView;->mLayoutMode:I

    add-int/2addr v1, v0

    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v6, v3

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    goto :goto_1

    :cond_2
    if-lez v2, :cond_3

    iput v7, p0, Landroid/widget/GridView;->mLayoutMode:I

    sub-int v1, v0, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    :goto_1
    move v1, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v1, v4

    :goto_3
    invoke-virtual {p0}, Landroid/widget/GridView;->isLayoutRtl()Z

    move-result v6

    const/16 v8, 0x42

    const/16 v9, 0x11

    if-le v0, v2, :cond_6

    if-ne p1, v9, :cond_4

    if-eqz v6, :cond_5

    :cond_4
    if-ne p1, v8, :cond_6

    if-eqz v6, :cond_6

    :cond_5
    iput v7, p0, Landroid/widget/GridView;->mLayoutMode:I

    sub-int/2addr v0, v3

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectionInt(I)V

    goto :goto_4

    :cond_6
    if-ge v0, v5, :cond_9

    if-ne p1, v9, :cond_7

    if-nez v6, :cond_8

    :cond_7
    if-ne p1, v8, :cond_9

    if-nez v6, :cond_9

    :cond_8
    iput v7, p0, Landroid/widget/GridView;->mLayoutMode:I

    add-int/2addr v0, v3

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectionInt(I)V

    goto :goto_4

    :cond_9
    move v3, v1

    :goto_4
    if-eqz v3, :cond_a

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->playSoundEffect(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    :cond_b
    return v3
.end method

.method protected whitelist attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 0

    iget-object p1, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    if-nez p1, :cond_0

    new-instance p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    invoke-direct {p1}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    iput-object p1, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    :cond_0
    iput p4, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    iput p3, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    iget p2, p0, Landroid/widget/GridView;->mNumColumns:I

    iput p2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    iget p2, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int p2, p4, p2

    iput p2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    iget-boolean p2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez p2, :cond_1

    iget p2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int p2, p3, p2

    iput p2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    iget p0, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int/2addr p3, p0

    iput p3, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    return-void

    :cond_1
    add-int/lit8 p4, p4, -0x1

    sub-int/2addr p4, p3

    iget p2, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 p3, p2, -0x1

    rem-int p2, p4, p2

    sub-int/2addr p3, p2

    iput p3, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    iget p2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 p2, p2, -0x1

    iget p0, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int/2addr p4, p0

    sub-int/2addr p2, p4

    iput p2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    return-void
.end method

.method protected whitelist computeVerticalScrollExtent()I
    .locals 5

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x64

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v1, v4

    if-lez v1, :cond_0

    mul-int/lit8 v2, v2, 0x64

    div-int/2addr v2, v1

    add-int/2addr v3, v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v2, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result p0

    sub-int/2addr v1, p0

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v0

    sub-int/2addr v3, v1

    :cond_1
    return v3

    :cond_2
    return v1
.end method

.method protected whitelist computeVerticalScrollOffset()I
    .locals 7

    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v0, v3

    if-lez v0, :cond_1

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    div-int/2addr v4, v3

    invoke-virtual {p0}, Landroid/widget/GridView;->isStackFromBottom()Z

    move-result v5

    if-eqz v5, :cond_0

    mul-int v5, v4, v3

    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v5, v6

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    iget v6, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v6, v5

    div-int/2addr v6, v3

    mul-int/lit8 v6, v6, 0x64

    mul-int/lit8 v2, v2, 0x64

    div-int/2addr v2, v0

    sub-int/2addr v6, v2

    iget v0, p0, Landroid/widget/GridView;->mScrollY:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    int-to-float p0, v4

    mul-float/2addr v0, p0

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p0

    float-to-int p0, v0

    add-int/2addr v6, p0

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method protected whitelist computeVerticalScrollRange()I
    .locals 3

    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v0

    mul-int/lit8 v0, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Landroid/widget/GridView;->mScrollY:I

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/GridView;->mScrollY:I

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v2, p0

    int-to-float p0, v1

    mul-float/2addr v2, p0

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float/2addr v2, p0

    float-to-int p0, v2

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/GridView;->mAddDeleteGridAnimator:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Landroid/widget/GridView;->mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method protected whitelist drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/GridView;->mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->preDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    iget-object p0, p0, Landroid/widget/GridView;->mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->postDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V

    :cond_1
    return v0
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string v0, "numColumns"

    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    return-void
.end method

.method greylist-max-o fillGap(Z)V
    .locals 5

    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    iget v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x22

    if-eqz p1, :cond_3

    iget p1, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_0

    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingTop()I

    move-result v3

    :cond_0
    if-lez v2, :cond_1

    add-int/lit8 p1, v2, -0x1

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int v3, p1, v1

    :cond_1
    iget p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr p1, v2

    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v2, :cond_2

    add-int/lit8 v2, v0, -0x1

    add-int/2addr p1, v2

    :cond_2
    invoke-direct {p0, p1, v3}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Landroid/widget/GridView;->correctTooHigh(III)V

    return-void

    :cond_3
    iget p1, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_4

    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingBottom()I

    move-result p1

    goto :goto_0

    :cond_4
    move p1, v3

    :goto_0
    if-lez v2, :cond_5

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p1, v1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v2

    sub-int p1, v2, p1

    :goto_1
    iget v2, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v3, :cond_6

    sub-int/2addr v2, v0

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v2, -0x1

    :goto_2
    invoke-direct {p0, v2, p1}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Landroid/widget/GridView;->correctTooLow(III)V

    return-void
.end method

.method greylist-max-o findMotionRow(I)I
    .locals 4

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    iget p0, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr p0, v2

    return p0

    :cond_0
    add-int/2addr v2, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p1, v2, :cond_2

    iget p0, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr p0, v0

    return p0

    :cond_2
    sub-int/2addr v0, v1

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method greylist-max-o fullScroll(I)Z
    .locals 4

    const/16 v0, 0x21

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_0

    iput v1, p0, Landroid/widget/GridView;->mLayoutMode:I

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->setSelectionInt(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x82

    if-ne p1, v0, :cond_1

    iput v1, p0, Landroid/widget/GridView;->mLayoutMode:I

    iget p1, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setSelectionInt(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    :cond_2
    return v2
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-class p0, Landroid/widget/GridView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist getAdapter()Landroid/widget/Adapter;
    .locals 0

    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getAdapter()Landroid/widget/ListAdapter;
    .locals 0

    iget-object p0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method protected whitelist getChildDrawingOrder(II)I
    .locals 1

    iget-object v0, p0, Landroid/widget/GridView;->mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->getChildDrawingOrder(II)I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->getChildDrawingOrder(II)I

    move-result p0

    return p0
.end method

.method public whitelist getColumnWidth()I
    .locals 0

    iget p0, p0, Landroid/widget/GridView;->mColumnWidth:I

    return p0
.end method

.method public whitelist getGravity()I
    .locals 0

    iget p0, p0, Landroid/widget/GridView;->mGravity:I

    return p0
.end method

.method public whitelist getHorizontalSpacing()I
    .locals 0

    iget p0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    return p0
.end method

.method public whitelist getNumColumns()I
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget p0, p0, Landroid/widget/GridView;->mNumColumns:I

    return p0
.end method

.method public whitelist getRequestedColumnWidth()I
    .locals 0

    iget p0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    return p0
.end method

.method public whitelist getRequestedHorizontalSpacing()I
    .locals 0

    iget p0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    return p0
.end method

.method public whitelist getStretchMode()I
    .locals 0

    iget p0, p0, Landroid/widget/GridView;->mStretchMode:I

    return p0
.end method

.method public whitelist getVerticalSpacing()I
    .locals 0

    iget p0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    return p0
.end method

.method protected whitelist layoutChildren()V
    .locals 21

    move-object/from16 v1, p0

    iget-boolean v2, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    const/4 v0, 0x1

    if-nez v2, :cond_0

    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-super {v1}, Landroid/widget/AbsListView;->layoutChildren()V

    invoke-virtual {v1}, Landroid/widget/GridView;->invalidate()V

    iget-object v4, v1, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_1

    invoke-virtual {v1}, Landroid/widget/GridView;->resetList()V

    invoke-virtual {v1}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_23

    iput-boolean v3, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    return-void

    :cond_1
    :try_start_1
    iget-object v4, v1, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/widget/GridView;->mBottom:I

    iget v6, v1, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v5, v6

    iget-object v6, v1, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/widget/GridView;->getChildCount()I

    move-result v6

    iget v7, v1, Landroid/widget/GridView;->mLayoutMode:I

    packed-switch v7, :pswitch_data_0

    iget v7, v1, Landroid/widget/GridView;->mSelectedPosition:I

    goto :goto_1

    :pswitch_0
    iget v7, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    if-ltz v7, :cond_2

    iget v7, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    iget v9, v1, Landroid/widget/GridView;->mSelectedPosition:I

    sub-int/2addr v7, v9

    goto :goto_0

    :pswitch_1
    iget v7, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    iget v9, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int/2addr v7, v9

    if-ltz v7, :cond_2

    if-ge v7, v6, :cond_2

    invoke-virtual {v1, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v9, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_3

    :cond_2
    :pswitch_2
    move v7, v3

    :goto_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_4

    :goto_1
    iget v9, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int/2addr v7, v9

    if-ltz v7, :cond_3

    if-ge v7, v6, :cond_3

    invoke-virtual {v1, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v10, v7

    move-object v11, v9

    const/4 v9, 0x0

    :goto_3
    move v7, v3

    :goto_4
    iget-boolean v12, v1, Landroid/widget/GridView;->mDataChanged:Z

    if-eqz v12, :cond_4

    invoke-virtual {v1}, Landroid/widget/GridView;->handleDataChanged()V

    :cond_4
    iget v13, v1, Landroid/widget/GridView;->mItemCount:I

    if-nez v13, :cond_5

    invoke-virtual {v1}, Landroid/widget/GridView;->resetList()V

    invoke-virtual {v1}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_23

    iput-boolean v3, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    return-void

    :cond_5
    :try_start_2
    iget v13, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    invoke-virtual {v1, v13}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    invoke-virtual {v1}, Landroid/widget/GridView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v13

    if-eqz v13, :cond_9

    invoke-virtual {v13}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_9

    move/from16 v16, v0

    invoke-virtual {v1, v15}, Landroid/widget/GridView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eq v15, v0, :cond_6

    move/from16 v17, v16

    goto :goto_5

    :cond_6
    move/from16 v17, v3

    :goto_5
    if-eqz v0, :cond_a

    if-eqz v12, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v18

    if-nez v18, :cond_8

    iget-boolean v8, v1, Landroid/widget/GridView;->mAdapterHasStableIds:Z

    if-eqz v8, :cond_7

    goto :goto_6

    :cond_7
    const/4 v8, 0x0

    const/4 v15, 0x0

    goto :goto_7

    :cond_8
    :goto_6
    invoke-virtual {v13}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    goto :goto_8

    :cond_9
    move/from16 v16, v0

    move/from16 v17, v3

    :cond_a
    const/4 v0, -0x1

    const/4 v8, 0x0

    const/4 v15, 0x0

    :goto_8
    iget v14, v1, Landroid/widget/GridView;->mFirstPosition:I

    iget-object v3, v1, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v12, :cond_c

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v6, :cond_b

    move/from16 v19, v2

    :try_start_3
    invoke-virtual {v1, v12}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v8

    add-int v8, v14, v12

    invoke-virtual {v3, v2, v8}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v19

    move-object/from16 v8, v20

    goto :goto_9

    :cond_b
    move/from16 v19, v2

    move-object/from16 v20, v8

    goto :goto_a

    :cond_c
    move/from16 v19, v2

    move-object/from16 v20, v8

    invoke-virtual {v3, v6, v14}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    :goto_a
    invoke-virtual {v1}, Landroid/widget/GridView;->detachAllViewsFromParent()V

    invoke-virtual {v3}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    iget v2, v1, Landroid/widget/GridView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_1

    if-nez v6, :cond_13

    iget-boolean v2, v1, Landroid/widget/GridView;->mStackFromBottom:Z

    goto :goto_b

    :pswitch_3
    invoke-direct {v1, v7, v4, v5}, Landroid/widget/GridView;->moveSelection(III)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_12

    :pswitch_4
    iget v2, v1, Landroid/widget/GridView;->mSyncPosition:I

    iget v4, v1, Landroid/widget/GridView;->mSpecificTop:I

    invoke-direct {v1, v2, v4}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_12

    :pswitch_5
    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    iget v4, v1, Landroid/widget/GridView;->mSpecificTop:I

    invoke-direct {v1, v2, v4}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_12

    :pswitch_6
    iget v2, v1, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2, v5}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto/16 :goto_12

    :pswitch_7
    if-eqz v9, :cond_d

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-direct {v1, v2, v4, v5}, Landroid/widget/GridView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_12

    :cond_d
    invoke-direct {v1, v4, v5}, Landroid/widget/GridView;->fillSelection(II)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_12

    :pswitch_8
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    invoke-direct {v1, v4}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto/16 :goto_12

    :goto_b
    if-nez v2, :cond_10

    iget-object v2, v1, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_f

    invoke-virtual {v1}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_c

    :cond_e
    const/4 v2, 0x0

    goto :goto_d

    :cond_f
    :goto_c
    const/4 v2, -0x1

    :goto_d
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    invoke-direct {v1, v4}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v2

    goto :goto_12

    :cond_10
    iget v2, v1, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    iget-object v4, v1, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_12

    invoke-virtual {v1}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_e

    :cond_11
    move v4, v2

    goto :goto_f

    :cond_12
    :goto_e
    const/4 v4, -0x1

    :goto_f
    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    invoke-direct {v1, v2, v5}, Landroid/widget/GridView;->fillFromBottom(II)Landroid/view/View;

    move-result-object v2

    goto :goto_12

    :cond_13
    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    if-ltz v2, :cond_15

    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    iget v5, v1, Landroid/widget/GridView;->mItemCount:I

    if-ge v2, v5, :cond_15

    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    if-nez v10, :cond_14

    goto :goto_10

    :cond_14
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v4

    :goto_10
    invoke-direct {v1, v2, v4}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    goto :goto_12

    :cond_15
    iget v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    iget v5, v1, Landroid/widget/GridView;->mItemCount:I

    if-ge v2, v5, :cond_17

    iget v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v11, :cond_16

    goto :goto_11

    :cond_16
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v4

    :goto_11
    invoke-direct {v1, v2, v4}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    goto :goto_12

    :cond_17
    const/4 v2, 0x0

    invoke-direct {v1, v2, v4}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v4

    move-object v2, v4

    :goto_12
    invoke-virtual {v3}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    if-eqz v2, :cond_18

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v2}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, v1, Landroid/widget/GridView;->mSelectedTop:I

    goto :goto_13

    :cond_18
    iget v2, v1, Landroid/widget/GridView;->mTouchMode:I

    if-lez v2, :cond_19

    iget v2, v1, Landroid/widget/GridView;->mTouchMode:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_19

    iget v2, v1, Landroid/widget/GridView;->mMotionPosition:I

    iget v3, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1b

    iget v3, v1, Landroid/widget/GridView;->mMotionPosition:I

    invoke-virtual {v1, v3, v2}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    goto :goto_13

    :cond_19
    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1a

    iget-boolean v2, v1, Landroid/widget/GridView;->mIsHoveredByMouse:Z

    if-nez v2, :cond_1a

    iget v2, v1, Landroid/widget/GridView;->mSelectorPosition:I

    iget v3, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1b

    iget v3, v1, Landroid/widget/GridView;->mSelectorPosition:I

    invoke-virtual {v1, v3, v2}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    goto :goto_13

    :cond_1a
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/GridView;->mSelectedTop:I

    iget-object v2, v1, Landroid/widget/GridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    :cond_1b
    :goto_13
    if-eqz v13, :cond_20

    invoke-virtual {v13}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1e

    if-eqz v15, :cond_1d

    invoke-virtual {v15}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v15}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    if-eqz v20, :cond_1c

    if-eqz v0, :cond_1c

    invoke-virtual/range {v20 .. v20}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v2

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_15

    :cond_1c
    invoke-virtual {v15}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto :goto_15

    :cond_1d
    const/4 v3, -0x1

    if-eq v0, v3, :cond_20

    iget v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto :goto_15

    :cond_1e
    const/4 v3, -0x1

    if-eq v0, v3, :cond_20

    iget v3, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int/2addr v0, v3

    invoke-virtual {v1}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    if-eqz v17, :cond_1f

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_14

    :cond_1f
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_14
    invoke-virtual {v2}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v3

    if-eqz v3, :cond_20

    if-eq v2, v0, :cond_20

    invoke-virtual {v2}, Landroid/view/View;->clearAccessibilityFocus()V

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    :cond_20
    :goto_15
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/GridView;->mLayoutMode:I

    iput-boolean v2, v1, Landroid/widget/GridView;->mDataChanged:Z

    iget-object v0, v1, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v0, :cond_21

    iget-object v0, v1, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    const/4 v4, 0x0

    iput-object v4, v1, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    :cond_21
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/GridView;->mNeedSync:Z

    iget v0, v1, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    invoke-virtual {v1}, Landroid/widget/GridView;->updateScrollIndicators()V

    iget v0, v1, Landroid/widget/GridView;->mItemCount:I

    if-lez v0, :cond_22

    invoke-virtual {v1}, Landroid/widget/GridView;->checkSelectionChanged()V

    :cond_22
    invoke-virtual {v1}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v19, :cond_23

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    :cond_23
    return-void

    :catchall_0
    move-exception v0

    goto :goto_16

    :catchall_1
    move-exception v0

    move/from16 v19, v2

    :goto_16
    if-nez v19, :cond_24

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    :cond_24
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method greylist-max-o lookForSelectablePosition(IZ)I
    .locals 1

    iget-object p2, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v0, -0x1

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_2

    iget p0, p0, Landroid/widget/GridView;->mItemCount:I

    if-lt p1, p0, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    iget v1, p0, Landroid/widget/GridView;->mScrollX:I

    iget v2, p0, Landroid/widget/GridView;->mScrollY:I

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    const v3, 0x7fffffff

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-direct {p0, v4, p2}, Landroid/widget/GridView;->isCandidateSelection(II)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v5, v1}, Landroid/widget/GridView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {p3, v1, p2}, Landroid/widget/GridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v5

    if-ge v5, v3, :cond_1

    move v0, v4

    move v3, v5

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-ltz v0, :cond_3

    iget p2, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    :goto_2
    if-eqz p1, :cond_4

    iget-object p1, p0, Landroid/widget/GridView;->mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    if-eqz p1, :cond_4

    new-instance p1, Landroid/widget/GridView$3;

    invoke-direct {p1, p0}, Landroid/widget/GridView$3;-><init>(Landroid/widget/GridView;)V

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 11

    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    div-int v2, v0, v1

    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v4, 0x1

    if-nez v3, :cond_0

    rem-int v0, p2, v1

    div-int v1, p2, v1

    move v7, v0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v4

    sub-int/2addr v0, p2

    add-int/lit8 v3, v1, -0x1

    rem-int v5, v0, v1

    sub-int/2addr v3, v5

    sub-int/2addr v2, v4

    div-int/2addr v0, v1

    sub-int v1, v2, v0

    move v7, v3

    :goto_0
    move v5, v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/AbsListView$LayoutParams;

    if-eqz p1, :cond_1

    iget p1, p1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    move v9, v4

    invoke-virtual {p0, p2}, Landroid/widget/GridView;->isItemChecked(I)Z

    move-result v10

    const/4 v6, 0x1

    const/4 v8, 0x1

    invoke-static/range {v5 .. v10}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v1

    div-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/GridView;->getSelectionModeForAccessibility()I

    move-result p0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    if-gtz v0, :cond_1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/GridView;->mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected whitelist onMeasure(II)V
    .locals 13

    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-nez v0, :cond_1

    iget v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    if-lez v2, :cond_0

    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    :goto_0
    add-int/2addr v2, v4

    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalScrollbarWidth()I

    move-result v4

    add-int/2addr v2, v4

    :cond_1
    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v4, v2, v4

    iget-object v5, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    invoke-direct {p0, v4}, Landroid/widget/GridView;->determineColumns(I)Z

    move-result v4

    iget-object v5, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v6, 0x0

    if-nez v5, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    iget-object v5, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    :goto_1
    iput v5, p0, Landroid/widget/GridView;->mItemCount:I

    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-lez v5, :cond_4

    iget-object v9, p0, Landroid/widget/GridView;->mIsScrap:[Z

    invoke-virtual {p0, v6, v9}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/AbsListView$LayoutParams;

    if-nez v10, :cond_3

    invoke-virtual {p0}, Landroid/widget/GridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v11, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v11, v6}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v11

    iput v11, v10, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    iget-object v11, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v11, v6}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v11

    iput-boolean v11, v10, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    iput-boolean v8, v10, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result p2

    iget v11, v10, Landroid/widget/AbsListView$LayoutParams;->height:I

    invoke-static {p2, v6, v11}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result p2

    iget v11, p0, Landroid/widget/GridView;->mColumnWidth:I

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    iget v12, v10, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {v11, v6, v12}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v11

    invoke-virtual {v9, v11, p2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredState()I

    move-result v11

    invoke-static {v6, v11}, Landroid/widget/GridView;->combineMeasuredStates(II)I

    iget-object v11, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v10, v10, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v11, v10}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v10, v9, v7}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_2

    :cond_4
    move p2, v6

    :cond_5
    :goto_2
    if-nez v1, :cond_6

    iget-object v3, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v9

    add-int/2addr v3, p2

    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v3, v9

    :cond_6
    const/high16 v9, -0x80000000

    if-ne v1, v9, :cond_a

    iget-object v1, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v10

    iget v10, p0, Landroid/widget/GridView;->mNumColumns:I

    :cond_7
    if-ge v6, v5, :cond_9

    add-int/2addr v1, p2

    add-int/2addr v6, v10

    if-ge v6, v5, :cond_8

    iget v11, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v1, v11

    :cond_8
    if-lt v1, v3, :cond_7

    goto :goto_3

    :cond_9
    move v3, v1

    :cond_a
    :goto_3
    if-ne v0, v9, :cond_c

    iget p2, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    if-eq p2, v7, :cond_c

    iget v0, p0, Landroid/widget/GridView;->mColumnWidth:I

    mul-int/2addr v0, p2

    sub-int/2addr p2, v8

    iget v1, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    mul-int/2addr p2, v1

    add-int/2addr v0, p2

    iget-object p2, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iget-object p2, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    if-gt v0, v2, :cond_b

    if-eqz v4, :cond_c

    :cond_b
    const/high16 p2, 0x1000000

    or-int/2addr v2, p2

    :cond_c
    invoke-virtual {p0, v2, v3}, Landroid/widget/GridView;->setMeasuredDimension(II)V

    iput p1, p0, Landroid/widget/GridView;->mWidthMeasureSpec:I

    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/GridView;->mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/widget/GridView;->mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/widget/GridView$2;

    invoke-direct {p1, p0}, Landroid/widget/GridView$2;-><init>(Landroid/widget/GridView;)V

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method greylist-max-o pageScroll(I)Z
    .locals 4

    const/16 v0, 0x21

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    iget p1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 v0, 0x82

    if-ne p1, v0, :cond_1

    iget p1, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr p1, v1

    iget v0, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    add-int/2addr v0, v3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setSelectionInt(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    return v1

    :cond_2
    return v2
.end method

.method public greylist-max-o performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const v0, 0x1020037

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result p1

    const-string v0, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    mul-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-ltz p2, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist semEnableSelectZeroOnLastFocusTab(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/GridView;->mSelectZeroPositionOnKeyTab:Z

    return-void
.end method

.method public blacklist semSetAppWidgetEnabled(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetAppWidgetEnabled(Z)V

    return-void
.end method

.method public blacklist semSetFastScrollEnabledForAppWidget(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetFastScrollEnabledForAppWidget(Z)V

    return-void
.end method

.method public blacklist semSetGoToTopEnabledForAppWidget(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetGoToTopEnabledForAppWidget(Z)V

    return-void
.end method

.method public blacklist semSetGoToTopOffsetForAppWidget(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetGoToTopOffsetForAppWidget(I)V

    return-void
.end method

.method public blacklist semSetScrollBarBottomPadding(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetScrollBarBottomPadding(I)V

    return-void
.end method

.method public blacklist semSetScrollBarTopPadding(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->semSetScrollBarTopPadding(I)V

    return-void
.end method

.method greylist sequenceScroll(I)Z
    .locals 8

    iget v0, p0, Landroid/widget/GridView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    div-int v3, v0, v1

    mul-int/2addr v3, v1

    add-int/2addr v1, v3

    sub-int/2addr v1, v5

    add-int/lit8 v6, v2, -0x1

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v2, -0x1

    sub-int v6, v3, v0

    div-int/2addr v6, v1

    mul-int/2addr v6, v1

    sub-int/2addr v3, v6

    sub-int v1, v3, v1

    add-int/2addr v1, v5

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v7, v3

    move v3, v1

    move v1, v7

    :goto_0
    const/4 v6, 0x6

    if-eq p1, v5, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    goto :goto_2

    :cond_1
    sub-int/2addr v2, v5

    if-ge v0, v2, :cond_4

    iput v6, p0, Landroid/widget/GridView;->mLayoutMode:I

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->setSelectionInt(I)V

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_2
    if-lez v0, :cond_4

    iput v6, p0, Landroid/widget/GridView;->mLayoutMode:I

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    if-ne v0, v3, :cond_3

    :goto_1
    move v4, v5

    :cond_3
    move v0, v4

    move v4, v5

    goto :goto_3

    :cond_4
    :goto_2
    move v0, v4

    :goto_3
    if-eqz v4, :cond_5

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->playSoundEffect(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    :cond_6
    return v4
.end method

.method public bridge synthetic whitelist setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridView;->resetList()V

    iget-object v0, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    iput-object p1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/GridView;->mOldSelectedPosition:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/GridView;->mOldSelectedRowId:J

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    iget p1, p0, Landroid/widget/GridView;->mItemCount:I

    iput p1, p0, Landroid/widget/GridView;->mOldItemCount:I

    iget-object p1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    iput p1, p0, Landroid/widget/GridView;->mItemCount:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/GridView;->mDataChanged:Z

    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    new-instance v0, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    iget-boolean v0, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, p1}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    :goto_1
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    return-void
.end method

.method public blacklist setAddDeleteGridAnimator(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/GridView;->mAddDeleteGridAnimator:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    return-void
.end method

.method public whitelist setColumnWidth(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public blacklist setDndGridAnimator(Lcom/samsung/android/animation/SemDragAndDropGridAnimator;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/GridView;->mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setChildrenDrawingOrderEnabled(Z)V

    iget-object p1, p0, Landroid/widget/GridView;->mDndGridAnimator:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    new-instance v0, Landroid/widget/GridView$1;

    invoke-direct {v0, p0}, Landroid/widget/GridView$1;-><init>(Landroid/widget/GridView;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->setAutoScrollListener(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;)V

    return-void
.end method

.method public whitelist setGravity(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/GridView;->mGravity:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public whitelist setHorizontalSpacing(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public whitelist setNumColumns(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public whitelist setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setRemoteViewsAdapterAsync"
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    return-void
.end method

.method public whitelist setSelection(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    :cond_0
    iput p1, p0, Landroid/widget/GridView;->mResurrectToPosition:I

    :goto_0
    const/4 p1, 0x2

    iput p1, p0, Landroid/widget/GridView;->mLayoutMode:I

    iget-object p1, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {p1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/GridView;->semShowGoToTOP()V

    return-void
.end method

.method greylist-max-o setSelectionInt(I)V
    .locals 3

    iget v0, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-object v2, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v2}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    iget-boolean p1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz p1, :cond_1

    iget p1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 p1, p1, -0x1

    iget v2, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    sub-int/2addr p1, v2

    goto :goto_0

    :cond_1
    iget p1, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    :goto_0
    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    sub-int v0, v2, v0

    :cond_2
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int/2addr p1, v2

    div-int/2addr v0, v2

    iget v2, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/GridView;->semShowGoToTOP()V

    :cond_3
    if-eq p1, v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    :cond_4
    return-void
.end method

.method public whitelist setStretchMode(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/widget/GridView;->mStretchMode:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public whitelist setVerticalSpacing(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public whitelist smoothScrollByOffset(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    return-void
.end method

.method public whitelist smoothScrollToPosition(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    return-void
.end method

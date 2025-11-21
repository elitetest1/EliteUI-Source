.class public Lcom/android/internal/widget/NotificationOptimizedLinearLayout;
.super Landroid/widget/LinearLayout;
.source "NotificationOptimizedLinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final blacklist DEBUG_LAYOUT:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "NotifOptimizedLinearLayout"

.field private static final blacklist TRACE_ONMEASURE:Z


# instance fields
.field private blacklist mShouldUseOptimizedLayout:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->TRACE_ONMEASURE:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mShouldUseOptimizedLayout:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mShouldUseOptimizedLayout:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mShouldUseOptimizedLayout:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mShouldUseOptimizedLayout:Z

    return-void
.end method

.method private blacklist getActiveChildren()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getChildCount()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private blacklist getDividerHeight()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    return p0
.end method

.method private blacklist getSingleWeightedChild()Landroid/view/View;
    .locals 11

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getActiveChildren()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v1

    move-object v6, v4

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_6

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    instance-of v8, v8, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    if-nez v0, :cond_1

    iget v10, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq v10, v9, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    iget v10, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-ne v10, v9, :cond_3

    :cond_2
    const-string v0, "There is a match parent child in the related orientation."

    invoke-direct {p0, v0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    return-object v4

    :cond_3
    iget v8, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_5

    if-nez v6, :cond_4

    move-object v6, v7

    goto :goto_2

    :cond_4
    const-string v0, "There is more than one weighted child."

    invoke-direct {p0, v0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    return-object v4

    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    if-nez v6, :cond_7

    const-string v0, "There is no weighted child in this layout."

    invoke-direct {p0, v0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    return-object v6

    :cond_7
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v7, -0x2

    if-eq v5, v7, :cond_9

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v5, :cond_8

    goto :goto_3

    :cond_8
    move v5, v1

    goto :goto_4

    :cond_9
    :goto_3
    move v5, v2

    :goto_4
    iget v8, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq v8, v7, :cond_a

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v3, :cond_b

    :cond_a
    move v1, v2

    :cond_b
    if-eqz v0, :cond_c

    if-eqz v5, :cond_d

    :cond_c
    if-nez v0, :cond_e

    if-nez v1, :cond_e

    :cond_d
    const-string v0, "Single weighted child should be either WRAP_CONTENT or 0 in the related orientation"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    return-object v4

    :cond_e
    return-object v6
.end method

.method private blacklist isOptimizationPossible(II)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getWeightSum()F

    move-result p2

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    const/4 v0, 0x0

    if-lez p2, :cond_0

    const-string p1, "Has weightSum."

    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->requiresMatchParentRemeasureForVerticalLinearLayout(I)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "Vertical LinearLayout requires children width MATCH_PARENT remeasure "

    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getOrientation()I

    move-result p2

    if-nez p2, :cond_2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    if-eq p1, p2, :cond_2

    const-string p1, "Horizontal LinearLayout\'s width should be measured EXACTLY"

    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    return v0

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->requiresBaselineAlignmentForHorizontalLinearLayout()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Need to apply baseline."

    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    return v0

    :cond_3
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->requiresNegativeMarginHandlingForHorizontalLinearLayout()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Need to handle negative margins."

    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    return v0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isUseOptimizedLinearLayoutFlagEnabled()Z
    .locals 2

    invoke-static {}, Landroid/widget/flags/Flags;->notifLinearlayoutOptimized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "enableNotifLinearlayoutOptimized flag is off."

    invoke-direct {p0, v1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method private blacklist layoutVerticalOptimized(IIII)V
    .locals 10

    iget v0, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingLeft:I

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p3, p1

    iget p1, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingRight:I

    sub-int p1, p3, p1

    sub-int/2addr p3, v0

    iget v2, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingRight:I

    sub-int/2addr p3, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getGravity()I

    move-result v3

    and-int/lit8 v3, v3, 0x70

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getGravity()I

    move-result v4

    const v5, 0x800007

    and-int/2addr v4, v5

    const/16 v5, 0x10

    if-eq v3, v5, :cond_1

    const/16 v5, 0x50

    if-eq v3, v5, :cond_0

    iget p2, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingTop:I

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingTop:I

    add-int/2addr v3, p4

    sub-int/2addr v3, p2

    sub-int p2, v3, v1

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingTop:I

    sub-int/2addr p4, p2

    sub-int/2addr p4, v1

    div-int/lit8 p4, p4, 0x2

    add-int p2, v3, p4

    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getDividerHeight()I

    move-result p4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_7

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v8, :cond_2

    move v8, v4

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getLayoutDirection()I

    move-result v9

    invoke-static {v8, v9}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v8

    and-int/lit8 v8, v8, 0x7

    const/4 v9, 0x1

    if-eq v8, v9, :cond_4

    const/4 v9, 0x5

    if-eq v8, v9, :cond_3

    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v0

    goto :goto_3

    :cond_3
    sub-int v8, p1, v5

    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    :cond_4
    sub-int v8, p3, v5

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v0

    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v9

    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_2
    sub-int/2addr v8, v9

    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v9

    if-eqz v9, :cond_5

    add-int/2addr p2, p4

    :cond_5
    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr p2, v9

    add-int/2addr v5, v8

    add-int v9, p2, v6

    invoke-virtual {v3, v8, p2, v5, v9}, Landroid/view/View;->layout(IIII)V

    iget v3, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v3

    add-int/2addr p2, v6

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method private blacklist logSkipOptimizedOnMeasure(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private blacklist measureVerticalOptimized(Landroid/view/View;II)V
    .locals 14

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    const/4 v9, 0x0

    move v10, v9

    move v11, v10

    move v12, v11

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getChildCount()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-ge v10, v1, :cond_3

    invoke-virtual {p0, v10}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    if-ne v1, p1, :cond_2

    iget v1, v13, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-nez v1, :cond_1

    if-ne v8, v2, :cond_1

    iget v1, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v11

    iget v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    :cond_1
    :goto_1
    move/from16 v3, p2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    const/4 v6, 0x0

    move/from16 v3, p2

    move/from16 v5, p3

    move-object v2, v1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v11

    iget v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v4, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    iget v4, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    move/from16 v3, p2

    iget v4, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingTop:I

    iget v5, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v11, v4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-ne v8, v2, :cond_4

    move v5, v2

    goto :goto_3

    :cond_4
    const/high16 v5, -0x80000000

    :goto_3
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-nez v6, :cond_5

    if-ne v8, v2, :cond_5

    sub-int/2addr v7, v11

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_4

    :cond_5
    iget v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v6

    add-int/2addr v2, v11

    sub-int/2addr v7, v2

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    :goto_4
    iget v5, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingLeft:I

    iget v6, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingRight:I

    add-int/2addr v5, v6

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v3, v5, v6}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getChildMeasureSpec(III)I

    move-result v5

    invoke-virtual {p1, v5, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v11

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v5

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v5

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v5

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v4

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v3, v9}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v5, p3

    invoke-static {v2, v5, v9}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->resolveSizeAndState(III)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method private blacklist onLayoutOptimized(ZIIII)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getOrientation()I

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    :cond_0
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->layoutVerticalOptimized(IIII)V

    return-void
.end method

.method private blacklist onMeasureOptimized(Landroid/view/View;II)V
    .locals 4

    :try_start_0
    sget-boolean v0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->TRACE_ONMEASURE:Z

    if-eqz v0, :cond_0

    const-string v1, "NotifOptimizedLinearLayout#onMeasure"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getOrientation()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->isBaselineAligned()Z

    move-result v2

    const/4 v3, 0x0

    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->setBaselineAligned(Z)V

    invoke-super {p0, p2, p3}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->setBaselineAligned(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->measureVerticalOptimized(Landroid/view/View;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->trackShouldUseOptimizedLayout()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    sget-boolean p2, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->TRACE_ONMEASURE:Z

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->trackShouldUseOptimizedLayout()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_3
    throw p1
.end method

.method private blacklist requiresBaselineAlignmentForHorizontalLinearLayout()Z
    .locals 8

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->isBaselineAligned()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getActiveChildren()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getGravity()I

    move-result p0

    and-int/lit8 p0, p0, 0x70

    move v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v4

    goto :goto_1

    :cond_2
    move v4, v7

    :goto_1
    if-ne v4, v7, :cond_3

    goto :goto_2

    :cond_3
    iget v4, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v4, :cond_4

    move v4, p0

    :cond_4
    and-int/lit8 v4, v4, 0x70

    const/16 v5, 0x30

    if-eq v4, v5, :cond_5

    const/16 v5, 0x50

    if-ne v4, v5, :cond_6

    :cond_5
    return v2

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return v1
.end method

.method private blacklist requiresMatchParentRemeasureForVerticalLinearLayout(I)Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getActiveChildren()Ljava/util/List;

    move-result-object p0

    move v0, v1

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz p1, :cond_2

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method private blacklist requiresNegativeMarginHandlingForHorizontalLinearLayout()Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getActiveChildren()Ljava/util/List;

    move-result-object p0

    move v0, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ltz v4, :cond_2

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    return v1
.end method

.method private blacklist trackShouldUseOptimizedLayout()V
    .locals 2

    sget-boolean v0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->TRACE_ONMEASURE:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mShouldUseOptimizedLayout:Z

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string p0, "NotifOptimizedLinearLayout#shouldUseOptimizedLayout"

    invoke-static {p0, v0, v1}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected whitelist onLayout(ZIIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mShouldUseOptimizedLayout:Z

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->onLayoutOptimized(ZIIII)V

    return-void

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getSingleWeightedChild()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->isUseOptimizedLinearLayoutFlagEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->isOptimizationPossible(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mShouldUseOptimizedLayout:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->onMeasureOptimized(Landroid/view/View;II)V

    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

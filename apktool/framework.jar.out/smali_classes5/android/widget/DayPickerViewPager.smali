.class Landroid/widget/DayPickerViewPager;
.super Lcom/android/internal/widget/ViewPager;
.source "DayPickerViewPager.java"


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

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected blacklist findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getAdapter()Lcom/android/internal/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/DayPickerPagerAdapter;->getView(Ljava/lang/Object;)Landroid/widget/SimpleMonthView;

    move-result-object v0

    if-eq v0, p2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/SimpleMonthView;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Landroid/widget/DayPickerViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eq v3, p2, :cond_2

    if-eq v3, v0, :cond_2

    invoke-virtual {v3, p1}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method protected whitelist onMeasure(II)V
    .locals 13

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->populate()V

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getChildCount()I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    move v5, v3

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_2
    const/4 v9, -0x1

    if-ge v5, v0, :cond_4

    invoke-virtual {p0, v5}, Landroid/widget/DayPickerViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_3

    invoke-virtual {p0, v10, p1, p2}, Landroid/widget/DayPickerViewPager;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/ViewPager$LayoutParams;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredState()I

    move-result v12

    invoke-static {v8, v12}, Landroid/widget/DayPickerViewPager;->combineMeasuredStates(II)I

    move-result v8

    if-eqz v1, :cond_3

    iget v12, v11, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    if-eq v12, v9, :cond_2

    iget v11, v11, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    if-ne v11, v9, :cond_3

    :cond_2
    iget-object v9, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v6, v0

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v7, v0

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_5
    invoke-static {v1, p1, v8}, Landroid/widget/DayPickerViewPager;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v5, v8, 0x10

    invoke-static {v0, p2, v5}, Landroid/widget/DayPickerViewPager;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/widget/DayPickerViewPager;->setMeasuredDimension(II)V

    iget-object v0, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_8

    :goto_3
    if-ge v3, v0, :cond_8

    iget-object v1, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager$LayoutParams;

    iget v5, v2, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    if-ne v5, v9, :cond_6

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v2, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    invoke-static {p1, v5, v6}, Landroid/widget/DayPickerViewPager;->getChildMeasureSpec(III)I

    move-result v5

    :goto_4
    iget v6, v2, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    if-ne v6, v9, :cond_7

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v2, v6

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v2, v6

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    iget v2, v2, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    invoke-static {p2, v6, v2}, Landroid/widget/DayPickerViewPager;->getChildMeasureSpec(III)I

    move-result v2

    :goto_5
    invoke-virtual {v1, v5, v2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    iget-object p0, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

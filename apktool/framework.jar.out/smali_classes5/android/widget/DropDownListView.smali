.class public Landroid/widget/DropDownListView;
.super Landroid/widget/ListView;
.source "DropDownListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DropDownListView$ResolveHoverRunnable;
    }
.end annotation


# instance fields
.field private greylist-max-o mDrawsInPressedState:Z

.field private greylist-max-o mHijackFocus:Z

.field blacklist mIsAutoCompleteTextPopup:Z

.field private greylist-max-o mListSelectionHidden:Z

.field private greylist-max-o mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

.field private greylist-max-o mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmResolveHoverRunnable(Landroid/widget/DropDownListView;Landroid/widget/DropDownListView$ResolveHoverRunnable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Z)V
    .locals 1

    const v0, 0x101006d

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DropDownListView;-><init>(Landroid/content/Context;ZI)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;ZI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/DropDownListView;->mIsAutoCompleteTextPopup:Z

    iput-boolean p2, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    invoke-virtual {p0, p1}, Landroid/widget/DropDownListView;->setCacheColorHint(I)V

    return-void
.end method

.method private greylist-max-o clearPressedItem()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/DropDownListView;->mDrawsInPressedState:Z

    invoke-virtual {p0, v0}, Landroid/widget/DropDownListView;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/widget/DropDownListView;->updateSelectorState()V

    iget v1, p0, Landroid/widget/DropDownListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/DropDownListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method private greylist-max-o setPressedItem(Landroid/view/View;IFF)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/DropDownListView;->mDrawsInPressedState:Z

    invoke-virtual {p0, p3, p4}, Landroid/widget/DropDownListView;->drawableHotspotChanged(FF)V

    invoke-virtual {p0}, Landroid/widget/DropDownListView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/DropDownListView;->setPressed(Z)V

    :cond_0
    iget-boolean v1, p0, Landroid/widget/DropDownListView;->mDataChanged:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/DropDownListView;->layoutChildren()V

    :cond_1
    iget v1, p0, Landroid/widget/DropDownListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/DropDownListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eq v1, p1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_2
    iput p2, p0, Landroid/widget/DropDownListView;->mMotionPosition:I

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p3, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p4, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_3
    invoke-virtual {p0, p2}, Landroid/widget/DropDownListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/widget/DropDownListView;->positionSelectorLikeTouch(ILandroid/view/View;FF)V

    invoke-virtual {p0}, Landroid/widget/DropDownListView;->refreshDrawableState()V

    return-void
.end method


# virtual methods
.method protected whitelist drawableStateChanged()V
    .locals 1

    iget-object v0, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    :cond_0
    return-void
.end method

.method public whitelist hasFocus()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist hasWindowFocus()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist isFocused()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist isInTouchMode()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method greylist-max-o obtainView(I[Z)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object p0

    instance-of p1, p0, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Landroid/widget/TextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    :cond_0
    return-object p0
.end method

.method public greylist-max-o onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p2, 0x3

    if-eq v0, p2, :cond_1

    :cond_0
    :goto_0
    move v3, v1

    :goto_1
    move p2, v2

    goto :goto_4

    :cond_1
    :goto_2
    move p2, v2

    move v3, p2

    goto :goto_4

    :cond_2
    move v3, v1

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-gez p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    float-to-int p2, p2

    if-gez p2, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v4, p2}, Landroid/widget/DropDownListView;->pointToPosition(II)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_6

    move p2, v1

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v5, v3

    invoke-virtual {p0, v3}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    int-to-float v4, v4

    int-to-float p2, p2

    invoke-direct {p0, v3, v5, v4, p2}, Landroid/widget/DropDownListView;->setPressedItem(Landroid/view/View;IFF)V

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v5}, Landroid/widget/DropDownListView;->getItemIdAtPosition(I)J

    move-result-wide v6

    invoke-virtual {p0, v3, v5, v6, v7}, Landroid/widget/DropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0

    :goto_4
    if-eqz v3, :cond_7

    if-eqz p2, :cond_8

    :cond_7
    invoke-direct {p0}, Landroid/widget/DropDownListView;->clearPressedItem()V

    :cond_8
    if-eqz v3, :cond_a

    iget-object p2, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    if-nez p2, :cond_9

    new-instance p2, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-direct {p2, p0}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object p2, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    :cond_9
    iget-object p2, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-virtual {p2, v1}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;

    iget-object p2, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-virtual {p2, p0, p1}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    return v3

    :cond_a
    iget-object p0, p0, Landroid/widget/DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    if-eqz p0, :cond_b

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;

    :cond_b
    return v3
.end method

.method public whitelist onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/DropDownListView$ResolveHoverRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/DropDownListView$ResolveHoverRunnable;-><init>(Landroid/widget/DropDownListView;Landroid/widget/DropDownListView-IA;)V

    iput-object v1, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    invoke-virtual {v1}, Landroid/widget/DropDownListView$ResolveHoverRunnable;->post()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    const/16 v2, 0x9

    const/4 v3, -0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0, v3}, Landroid/widget/DropDownListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v3}, Landroid/widget/DropDownListView;->setNextSelectedPositionInt(I)V

    return v1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/DropDownListView;->pointToPosition(II)I

    move-result p1

    if-eq p1, v3, :cond_6

    iget v0, p0, Landroid/widget/DropDownListView;->mSelectedPosition:I

    if-eq p1, v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroid/widget/DropDownListView;->requestFocus()Z

    iget-object v2, p0, Landroid/widget/DropDownListView;->mContext:Landroid/content/Context;

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->semIsScreenReaderEnabled()Z

    move-result v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_5

    invoke-virtual {p0}, Landroid/widget/DropDownListView;->isHovered()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/DropDownListView;->setHovered(Z)V

    :cond_4
    invoke-virtual {p0, p1, v0}, Landroid/widget/DropDownListView;->positionSelector(ILandroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/widget/DropDownListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, p1}, Landroid/widget/DropDownListView;->setNextSelectedPositionInt(I)V

    :cond_5
    invoke-virtual {p0}, Landroid/widget/DropDownListView;->updateSelectorState()V

    :cond_6
    return v1
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/DropDownListView;->mResolveHoverRunnable:Landroid/widget/DropDownListView$ResolveHoverRunnable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/DropDownListView$ResolveHoverRunnable;->cancel()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public greylist-max-o setListSelectionHidden(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/DropDownListView;->mListSelectionHidden:Z

    return-void
.end method

.method greylist-max-o shouldShowSelector()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/DropDownListView;->isHovered()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method greylist-max-o touchModeDrawsInPressedState()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/DropDownListView;->mDrawsInPressedState:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ListView;->touchModeDrawsInPressedState()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

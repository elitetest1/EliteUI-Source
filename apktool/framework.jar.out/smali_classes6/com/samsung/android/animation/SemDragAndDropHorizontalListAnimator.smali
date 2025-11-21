.class public Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;
.super Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;
.source "SemDragAndDropHorizontalListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemDragAndDropHListAnimator"


# instance fields
.field private blacklist mItemAnimationListener:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

.field private blacklist mListView:Landroid/widget/SemHorizontalListView;

.field blacklist mNonMovableItems:Landroid/util/SparseIntArray;

.field private blacklist mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private final blacklist mScrollBarSize:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$minitDragIfNecessary(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->initDragIfNecessary(I)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/widget/SemHorizontalListView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    const/16 p1, 0xa

    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mScrollBarSize:I

    iput-object p2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {p2, p0}, Landroid/widget/SemHorizontalListView;->setDndListAnimator(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)V

    invoke-direct {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->initListeners()V

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndAnimationCore:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    iget-object p2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimationListener:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->setAnimationListener(Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;)V

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p1, p0}, Landroid/widget/SemHorizontalListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method private blacklist addNewTranslation(II)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    invoke-direct {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;-><init>()V

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->isFinished()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getCurrentTranslateX()F

    move-result v1

    float-to-int v1, v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    sub-int v1, p2, v1

    invoke-virtual {v0, p2, v1, v2, v2}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->translate(IIII)V

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->isFinished()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getProgress()F

    move-result p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v2}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(I)V

    :goto_2
    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->putItemAnimation(ILcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;)V

    return-void
.end method

.method private blacklist addReturningTranslation(I)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    move-result-object p0

    instance-of p1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getCurrentTranslateX()F

    move-result p1

    float-to-int p1, p1

    neg-int p1, p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0, v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->translate(IIII)V

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getProgress()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    return-void
.end method

.method private blacklist checkDndGrabHandle(III)Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->activatedByLongPress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr p3, v2

    invoke-virtual {v1, p3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object p3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p3}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method private blacklist checkStartDnd(III)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->checkDndGrabHandle(III)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    invoke-interface {p1, p3}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrag(I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, p3}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->speakNotDraggableForAccessibility(I)V

    :cond_1
    return p1
.end method

.method private blacklist drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, p4}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    sget-object p3, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->PRESSED_STATE_SET:[I

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->EMPTY_STATE_SET:[I

    :goto_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object p2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragHandleAlpha:I

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method private blacklist drawDragHandlerIfNeeded(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->isDraggable()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {p3, p2}, Landroid/widget/SemHorizontalListView;->indexOfChild(Landroid/view/View;)I

    move-result p3

    iget-object p4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {p4}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result p4

    add-int/2addr p3, p4

    iget-object p4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {p4}, Landroid/widget/SemHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p4

    invoke-interface {p4, p3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-direct {p0, p3}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->isHeaderOrFooterViewPos(I)Z

    move-result p4

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    invoke-interface {p4, p3}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrag(I)Z

    move-result p3

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V

    :cond_0
    return-void
.end method

.method private blacklist findDragItemPosition(I)I
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v1

    if-lez v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v3, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/2addr v2, v1

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private blacklist findMovedItemPosition(I)I
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v1

    if-lez v0, :cond_2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    sub-int/2addr v3, v1

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v3, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    add-int v4, v2, v1

    invoke-virtual {v3, v4}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    move-result-object v3

    instance-of v5, v3, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    if-eqz v5, :cond_1

    check-cast v3, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    invoke-virtual {v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getDestOffsetX()I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    sub-int v3, p1, v3

    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    return v4

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private blacklist getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, -0xa

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0xa

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragGrabHandlePosGravity:I

    invoke-static {p0, v0, v1, p1, p2}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method private blacklist initDrag(I)Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragView:Landroid/view/View;

    const-string v1, "SemDragAndDropHListAnimator"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "initDrag : #4 return false, mDragView is null."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0, v2}, Landroid/widget/SemHorizontalListView;->setEnableHoverDrawable(Z)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchMode:I

    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    iput v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragPos:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragView:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->speakDragStartForAccessibility(I)V

    iget-boolean p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mUserSetDragItemBitmap:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v3}, Landroid/widget/SemHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010434

    invoke-virtual {v4, v5, p1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    iget p1, p1, Landroid/util/TypedValue;->data:I

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x11200b4

    invoke-virtual {v4, v5, p1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, p1, Landroid/util/TypedValue;->data:I

    if-nez p1, :cond_3

    const/16 p1, 0x72de

    goto :goto_0

    :cond_3
    const p1, 0x3e91ff

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragView:Landroid/view/View;

    invoke-static {v4}, Lcom/samsung/android/animation/SemAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p1, v3

    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p1, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-direct {p1, v2, v2, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, p1, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_4
    iget p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmapAlpha:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->setDragViewAlpha(I)V

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchOffsetX:I

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->startSelectHighlightingAnimation(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    if-eqz p1, :cond_6

    const-string p1, "dndListener.OnDragAndDropStart()"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    invoke-interface {p1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;->onDragAndDropStart()V

    goto :goto_1

    :cond_6
    const-string p1, "dndListener is null"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    return v0
.end method

.method private blacklist initDragIfNecessary(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->activatedByLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchY:I

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->checkStartDnd(III)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->initDrag(I)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->resetDndState()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist initListeners()V
    .locals 1

    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$1;-><init>(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimationListener:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$2;-><init>(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method private blacklist isHeaderOrFooterViewPos(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getCount()I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getFooterViewsCount()I

    move-result p0

    sub-int/2addr v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist onTouchMove(Landroid/view/MotionEvent;)V
    .locals 8

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mActivePointerId:I

    move v0, v2

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchY:I

    iget p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {p1}, Landroid/widget/SemHorizontalListView;->getRight()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getLeft()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getPaddingLeft()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {p1}, Landroid/widget/SemHorizontalListView;->getPaddingLeft()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    invoke-virtual {p1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    iget p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstTouchX:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x41700000    # 15.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    iput-boolean v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListItemSelectionAnimating:Z

    :cond_3
    const/4 p1, 0x2

    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchMode:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v1, v2}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/2addr v1, p1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getRight()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v3}, Landroid/widget/SemHorizontalListView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v3}, Landroid/widget/SemHorizontalListView;->getLeft()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v3}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, p1

    sub-int/2addr v1, v3

    :cond_5
    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    if-gt v3, v1, :cond_7

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    if-ge v3, v0, :cond_6

    goto :goto_1

    :cond_6
    iput v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndAutoScrollMode:I

    goto :goto_2

    :cond_7
    :goto_1
    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndAutoScrollMode:I

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mAutoScrollRunnable:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    const-wide/16 v6, 0x96

    invoke-virtual {v2, v3, v6, v7}, Landroid/widget/SemHorizontalListView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_8
    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    if-le v2, v1, :cond_9

    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndAutoScrollMode:I

    :cond_9
    iget p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    if-ge p1, v0, :cond_a

    iput v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndAutoScrollMode:I

    :cond_a
    :goto_2
    iget p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndAutoScrollMode:I

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mAutoScrollRunnable:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    invoke-virtual {p1, v0}, Landroid/widget/SemHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->reorderIfNeeded()V

    return-void
.end method

.method private blacklist onTouchUpCancel(Landroid/view/MotionEvent;)V
    .locals 7

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mActivePointerId:I

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {p1}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result p1

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchMode:I

    const-string v1, "SemDragAndDropHListAnimator"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->resetDndState()V

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    if-eqz v0, :cond_0

    const-string v0, "dndListener.onDragAndDropEnd() DND_TOUCH_STATUS_START"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;->onDragAndDropEnd()V

    :cond_0
    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchMode:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    sub-int/2addr v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragPos:I

    sub-int/2addr v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListItemSelectionAnimating:Z

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->resetDndState()V

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    if-eqz p1, :cond_7

    const-string p1, "dndListener.onDragAndDropEnd() mListItemSelectionAnimating is true"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    invoke-interface {p1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;->onDragAndDropEnd()V

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v5, v0

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchOffsetX:I

    sub-int/2addr v3, v6

    sub-int/2addr v0, v3

    new-instance v3, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    invoke-direct {v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;-><init>()V

    invoke-virtual {v3, v5, v0, v4, v4}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->translate(IIII)V

    const v0, 0x3f333333    # 0.7f

    invoke-virtual {v3, v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    invoke-virtual {v0, v5, v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->putItemAnimation(ILcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->start()V

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mRetainFirstDragViewPos:I

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {p1, v4}, Landroid/widget/SemHorizontalListView;->setEnabled(Z)V

    iput-boolean v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDropDonePending:Z

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->resetDndTouchValuesAndBitmap()V

    const-string/jumbo p1, "onTouchUp() start last animation"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    :goto_0
    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchOffsetX:I

    sub-int/2addr v0, v5

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result p1

    :goto_1
    sub-int/2addr p1, v0

    goto :goto_2

    :cond_5
    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragPos:I

    if-ge v3, p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {p1, v4}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    sub-int/2addr v0, p1

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr v0, p1

    neg-int p1, v0

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {p1}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result p1

    if-lez p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {p1}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p1, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    goto :goto_1

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "dndListener.onTouchUp() dragView == null, distance = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    filled-new-array {v4, p1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$3;-><init>(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$4;-><init>(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xd2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->SINE_IN_OUT_70:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_7
    :goto_3
    iput v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndAutoScrollMode:I

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mAutoScrollRunnable:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    invoke-virtual {p1, v0}, Landroid/widget/SemHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    return-void

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mListView.getChildCount() = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist recalculateOffset(II)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getDividerHeight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, v0

    const-string v3, "SemDragAndDropHListAnimator"

    const/4 v4, -0x1

    if-le p2, p1, :cond_6

    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-gt p1, p2, :cond_e

    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    if-le p1, v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    invoke-interface {v5, v6, p1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrop(II)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, p1

    move v6, v2

    :goto_1
    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    add-int/2addr v5, v4

    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v7

    if-ltz v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v5}, Landroid/widget/SemHorizontalListView;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, p1, v6}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->addNewTranslation(II)V

    goto :goto_2

    :cond_1
    neg-int v5, v6

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->addNewTranslation(II)V

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    sub-int v6, p1, v1

    invoke-virtual {v5, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v6, p1, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    sub-int v6, p1, v1

    invoke-virtual {v5, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "recalculateOffset(\'dragging down\') no such item, i = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    invoke-static {v5}, Lcom/samsung/android/animation/SemAnimatorUtils;->getViewCenterX(Landroid/view/View;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->findMovedItemPosition(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->addReturningTranslation(I)V

    :goto_2
    goto :goto_0

    :cond_6
    add-int/lit8 p1, p1, -0x1

    :goto_3
    if-lt p1, p2, :cond_e

    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    if-ge p1, v5, :cond_b

    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    invoke-interface {v5, v6, p1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrop(II)Z

    move-result v5

    if-eqz v5, :cond_9

    move v5, p1

    move v6, v2

    :goto_4
    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v7

    if-ltz v7, :cond_7

    iget-object v7, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_4

    :cond_7
    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v5}, Landroid/widget/SemHorizontalListView;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_8

    neg-int v5, v6

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->addNewTranslation(II)V

    goto :goto_5

    :cond_8
    invoke-direct {p0, p1, v6}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->addNewTranslation(II)V

    goto :goto_5

    :cond_9
    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    if-ne v5, v4, :cond_d

    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    sub-int v6, p1, v1

    invoke-virtual {v5, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_a

    goto :goto_5

    :cond_a
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v6, p1, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_5

    :cond_b
    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    sub-int v6, p1, v1

    invoke-virtual {v5, v6}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "recalculateOffset(\'dragging up\') no such item, i = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_c
    invoke-static {v5}, Lcom/samsung/android/animation/SemAnimatorUtils;->getViewCenterX(Landroid/view/View;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->findMovedItemPosition(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->addReturningTranslation(I)V

    :cond_d
    :goto_5
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_e
    return-void
.end method

.method private blacklist startSelectHighlightingAnimation(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListItemSelectionAnimating:Z

    new-instance p1, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    invoke-direct {p1, v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->setStartAndDuration(I)V

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->putItemAnimation(ILcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;)V

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->start()V

    return-void
.end method


# virtual methods
.method public blacklist dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchOffsetX:I

    sub-int/2addr v1, v2

    iget-boolean v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListItemSelectionAnimating:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmapTranslateX:I

    add-int/2addr v3, v1

    int-to-float v3, v3

    int-to-float v0, v0

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalListView;->getPaddingTop()I

    move-result v2

    neg-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmapTranslateX:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalListView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist getDragAndDropOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object p0
.end method

.method public blacklist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->isDraggable()Z

    move-result p1

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchMode:I

    if-ne p1, v2, :cond_8

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {p1}, Landroid/widget/SemHorizontalListView;->getCount()I

    move-result p1

    if-le p1, v2, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->activatedByLongPress()Z

    move-result p0

    if-eqz p0, :cond_8

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchMode:I

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_4
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mActivePointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchY:I

    iget p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstTouchX:I

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->isDraggable()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {p1}, Landroid/widget/SemHorizontalListView;->getCount()I

    move-result p1

    if-le p1, v2, :cond_8

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchY:I

    invoke-virtual {p1, v0, v3}, Landroid/widget/SemHorizontalListView;->pointToPosition(II)I

    move-result p1

    const/4 v0, -0x1

    const-string v3, "SemDragAndDropHListAnimator"

    if-ne p1, v0, :cond_5

    const-string/jumbo p0, "onInterceptTouchEvent : #1 return false, itemPosition invalid."

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->activatedByLongPress()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo p0, "onInterceptTouchEvent : #2 return false, activated By longPress."

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6
    if-ltz p1, :cond_7

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_7

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchY:I

    invoke-direct {p0, v0, v4, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->checkStartDnd(III)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->initDrag(I)Z

    move-result p0

    if-eqz p0, :cond_8

    return v2

    :cond_7
    const-string/jumbo p1, "onInterceptTouchEvent : #3 resetDndState"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->resetDndState()V

    :cond_8
    :goto_0
    return v1
.end method

.method public blacklist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->isDraggable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchMode:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v2, v0, 0xff

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v4, 0x3

    if-eq v2, v4, :cond_4

    const/4 v4, 0x6

    if-eq v2, v4, :cond_1

    goto :goto_0

    :cond_1
    const v2, 0xff00

    and-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mActivePointerId:I

    if-ne v2, v4, :cond_5

    if-nez v0, :cond_2

    move v1, v3

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mActivePointerId:I

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->onTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V

    :cond_5
    :goto_0
    return v3

    :cond_6
    :goto_1
    return v1
.end method

.method public blacklist postDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->drawDragHandlerIfNeeded(Landroid/graphics/Canvas;Landroid/view/View;J)V

    iget p2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mCanvasSaveCount:I

    if-lez p2, :cond_0

    iget p0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mCanvasSaveCount:I

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-void
.end method

.method public blacklist preDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    iget-object p3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {p3, p2}, Landroid/widget/SemHorizontalListView;->indexOfChild(Landroid/view/View;)I

    move-result p2

    iget-object p3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {p3}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->isDraggable()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    iget p3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    if-ne p2, p3, :cond_0

    iget-boolean p3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDropDonePending:Z

    if-nez p3, :cond_0

    iget-boolean p3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListItemSelectionAnimating:Z

    if-nez p3, :cond_0

    return p4

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {p3, p2}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    move-result-object p2

    iput p4, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mCanvasSaveCount:I

    if-eqz p2, :cond_1

    iget-object p3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempTrans:Landroid/view/animation/Transformation;

    invoke-virtual {p2, p3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->getTransformation(Landroid/view/animation/Transformation;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mCanvasSaveCount:I

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempTrans:Landroid/view/animation/Transformation;

    invoke-virtual {p0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method blacklist reorderIfNeeded()V
    .locals 4

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragPos:I

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchX:I

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndTouchOffsetX:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->findDragItemPosition(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    invoke-interface {v2, v3, v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrop(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragPos:I

    :cond_0
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragPos:I

    if-eq v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListItemSelectionAnimating:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragPos:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->recalculateOffset(II)V

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->start()V

    :cond_1
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragPos:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    return-void
.end method

.method blacklist resetDndPositionValues()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->resetDndPositionValues()V

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalListView;->setEnableHoverDrawable(Z)V

    return-void
.end method

.method blacklist resetDndTouchValuesAndBitmap()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->resetDndTouchValuesAndBitmap()V

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public blacklist setDragAndDropController(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;-><init>(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    return-void
.end method

.method public blacklist startDrag()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListView:Landroid/widget/SemHorizontalListView;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemHorizontalListView;->pointToPosition(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->initDragIfNecessary(I)Z

    move-result p0

    return p0
.end method

.class public Lcom/samsung/android/animation/SemDragAndDropGridAnimator;
.super Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;
.source "SemDragAndDropGridAnimator.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemDragAndDropGridAnimator"


# instance fields
.field private blacklist mGridView:Landroid/widget/GridView;

.field private blacklist mItemAnimationListener:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

.field private blacklist mItemHeight:I

.field private blacklist mItemWidth:I

.field blacklist mNonMovableItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmGridView(Lcom/samsung/android/animation/SemDragAndDropGridAnimator;)Landroid/widget/GridView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$minitDragIfNecessary(Lcom/samsung/android/animation/SemDragAndDropGridAnimator;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->initDragIfNecessary(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateDragViewBitmap(Lcom/samsung/android/animation/SemDragAndDropGridAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->updateDragViewBitmap()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/widget/GridView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mNonMovableItems:Ljava/util/HashSet;

    iput-object p2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p2, p0}, Landroid/widget/GridView;->setDndGridAnimator(Lcom/samsung/android/animation/SemDragAndDropGridAnimator;)V

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemWidth:I

    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemHeight:I

    invoke-direct {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->initListeners()V

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndAnimationCore:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    iget-object p2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemAnimationListener:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->setAnimationListener(Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;)V

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    iget-object p2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    const p1, 0x106000d

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setSelector(I)V

    return-void
.end method

.method private blacklist addNewTranslation(III)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

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
    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getDestOffsetX()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getDestOffsetY()I

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->isFinished()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getCurrentTranslateX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getCurrentTranslateY()F

    move-result v5

    float-to-int v5, v5

    goto :goto_1

    :cond_1
    move v3, v4

    move v5, v3

    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getProgress()F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v4}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(I)V

    :goto_2
    add-int/2addr p2, v1

    add-int/2addr p3, v2

    sub-int v1, p2, v3

    sub-int v2, p3, v5

    invoke-virtual {v0, p2, v1, p3, v2}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->translate(IIII)V

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->putItemAnimation(ILcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;)V

    return-void
.end method

.method private blacklist addReturningTranslation(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getCurrentTranslateX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getCurrentTranslateY()F

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    invoke-direct {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;-><init>()V

    move v1, v2

    move v3, v1

    :goto_0
    neg-int v1, v1

    neg-int v3, v3

    invoke-virtual {v0, v2, v1, v2, v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->translate(IIII)V

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getProgress()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->putItemAnimation(ILcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;)V

    return-void
.end method

.method private blacklist checkDndGrabHandle(III)Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->activatedByLongPress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr p3, v2

    invoke-virtual {v1, p3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object p3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p3}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method private blacklist checkStartDnd(III)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->checkDndGrabHandle(III)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    invoke-interface {p1, p3}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrag(I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, p3}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->speakNotDraggableForAccessibility(I)V

    :cond_1
    return p1
.end method

.method private blacklist drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, p4}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p4, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    sget-object p3, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->PRESSED_STATE_SET:[I

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->EMPTY_STATE_SET:[I

    :goto_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object p2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragHandleAlpha:I

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method private blacklist drawDragHandlerIfNeeded(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->isDraggable()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p3, p2}, Landroid/widget/GridView;->indexOfChild(Landroid/view/View;)I

    move-result p3

    iget-object p4, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p4}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result p4

    add-int/2addr p3, p4

    iget-object p4, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p4}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p4

    invoke-interface {p4, p3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    invoke-interface {p4, p3}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrag(I)Z

    move-result p3

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V

    :cond_0
    return-void
.end method

.method private blacklist findMovedItemIndex(Landroid/view/View;)I
    .locals 7

    invoke-static {p1}, Lcom/samsung/android/animation/SemAnimatorUtils;->getViewCenterX(Landroid/view/View;)I

    move-result v0

    invoke-static {p1}, Lcom/samsung/android/animation/SemAnimatorUtils;->getViewCenterY(Landroid/view/View;)I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v2

    if-lez v1, :cond_3

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    add-int v4, v1, v2

    invoke-virtual {v3, v4}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    move-result-object v3

    instance-of v5, v3, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    if-eqz v5, :cond_0

    check-cast v3, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    invoke-virtual {v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getDestOffsetX()I

    move-result v5

    invoke-virtual {v3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->getDestOffsetY()I

    move-result v3

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    move v3, v5

    :goto_1
    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    sub-int/2addr v6, v2

    if-ne v1, v6, :cond_1

    goto :goto_2

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mTempRect:Landroid/graphics/Rect;

    sub-int v5, v0, v5

    sub-int v3, p1, v3

    invoke-virtual {v6, v5, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    return v4

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private blacklist findMovingArrage()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v1, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemWidth:I

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemWidth:I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getNumColumns()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v0, v3, Landroid/graphics/Rect;->top:I

    iget v1, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemHeight:I

    :cond_3
    :goto_1
    return-void

    :cond_4
    iput v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemHeight:I

    return-void
.end method

.method private blacklist getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandlePosGravity:I

    const/4 v6, 0x1

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-void

    :cond_0
    move-object v4, p1

    move-object v5, p2

    iget p1, v4, Landroid/graphics/Rect;->left:I

    iget-object p2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p2

    iput p1, v4, Landroid/graphics/Rect;->left:I

    iget p1, v4, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p2

    iput p1, v4, Landroid/graphics/Rect;->top:I

    iget p1, v4, Landroid/graphics/Rect;->right:I

    iget-object p2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p2

    iput p1, v4, Landroid/graphics/Rect;->right:I

    iget p1, v4, Landroid/graphics/Rect;->bottom:I

    iget-object p2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    iput p1, v4, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragGrabHandlePosGravity:I

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    :cond_1
    return-void
.end method

.method private blacklist initDrag(I)Z
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->findMovingArrage()V

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEnableHoverDrawable(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchMode:I

    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->speakDragStartForAccessibility(I)V

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->updateDragViewBitmap()V

    iget p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewBitmapAlpha:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->setDragViewAlpha(I)V

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchX:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchOffsetX:I

    iget p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchY:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchOffsetY:I

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->startSelectHighlightingAnimation(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    if-eqz p1, :cond_3

    const-string p1, "SemDragAndDropGridAnimator"

    const-string v0, "dndListener.OnDragAndDropStart()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    invoke-interface {p1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;->onDragAndDropStart()V

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p0}, Landroid/widget/GridView;->invalidate()V

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist initDragIfNecessary(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->activatedByLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchX:I

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchY:I

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->checkStartDnd(III)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->initDrag(I)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->resetDndState()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist initListeners()V
    .locals 1

    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$1;-><init>(Lcom/samsung/android/animation/SemDragAndDropGridAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemAnimationListener:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$2;-><init>(Lcom/samsung/android/animation/SemDragAndDropGridAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method private blacklist onTouchMove(Landroid/view/MotionEvent;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchY:I

    iget-boolean p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mListItemSelectionAnimating:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    invoke-virtual {p1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchX:I

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstTouchX:I

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchY:I

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstTouchY:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x41700000    # 15.0f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mListItemSelectionAnimating:Z

    invoke-direct {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->updateDragViewBitmap()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->getPaddingTop()I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/2addr v1, v2

    add-int/2addr p1, v1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getBottom()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getTop()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/2addr v3, v2

    sub-int/2addr v1, v3

    :cond_2
    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchY:I

    if-gt v3, v1, :cond_4

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchY:I

    if-ge v3, p1, :cond_3

    goto :goto_0

    :cond_3
    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndAutoScrollMode:I

    goto :goto_1

    :cond_4
    :goto_0
    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndAutoScrollMode:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mAutoScrollRunnable:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    const-wide/16 v6, 0x96

    invoke-virtual {v0, v3, v6, v7}, Landroid/widget/GridView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_5
    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchY:I

    if-le v0, v1, :cond_6

    iput v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndAutoScrollMode:I

    :cond_6
    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchY:I

    if-ge v0, p1, :cond_7

    iput v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndAutoScrollMode:I

    :cond_7
    :goto_1
    iget p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndAutoScrollMode:I

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mAutoScrollRunnable:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->reorderIfNeeded()V

    return-void
.end method

.method private blacklist onTouchUpCancel(Landroid/view/MotionEvent;)V
    .locals 7

    iget p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchMode:I

    const-string v0, "SemDragAndDropGridAnimator"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->resetDndState()V

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    if-eqz p1, :cond_0

    const-string p1, "dndListener.onDragAndDropEnd() DND_TOUCH_STATUS_START"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    invoke-interface {p1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;->onDragAndDropEnd()V

    :cond_0
    iget p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchMode:I

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result p1

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    sub-int/2addr v5, p1

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    sub-int/2addr v6, p1

    invoke-virtual {v5, v6}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v4, :cond_4

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mListItemSelectionAnimating:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->resetDndState()V

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    if-eqz p1, :cond_8

    const-string p1, "dndListener.onDragAndDropEnd() mListItemSelectionAnimating is true"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    invoke-interface {p1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;->onDragAndDropEnd()V

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchX:I

    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchOffsetX:I

    sub-int/2addr v4, v6

    sub-int/2addr v3, v4

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchY:I

    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchOffsetY:I

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    new-instance v5, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;

    invoke-direct {v5}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;-><init>()V

    invoke-virtual {v5, v0, v3, v2, v4}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->translate(IIII)V

    const v0, 0x3f333333    # 0.7f

    invoke-virtual {v5, v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    invoke-virtual {v0, v2, v5}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->putItemAnimation(ILcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->start()V

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mRetainFirstDragViewPos:I

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setEnabled(Z)V

    iput-boolean v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDropDonePending:Z

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->resetDndTouchValuesAndBitmap()V

    goto/16 :goto_3

    :cond_4
    :goto_0
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchX:I

    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchOffsetX:I

    sub-int/2addr v1, v4

    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchY:I

    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchOffsetY:I

    sub-int/2addr v4, v6

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_1
    sub-int/2addr v1, v4

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v5}, Landroid/widget/GridView;->getNumColumns()I

    move-result v5

    if-ge v3, v5, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Child cound ("

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is smaller than column count ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->resetDndState()V

    return-void

    :cond_6
    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    if-ge v3, p1, :cond_7

    iget p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    rem-int/2addr p1, v5

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, p1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getPaddingTop()I

    move-result v1

    neg-int v1, v1

    sub-int/2addr v1, v4

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->getChildCount()I

    move-result p1

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    rem-int/2addr v3, v5

    add-int/2addr p1, v3

    sub-int/2addr p1, v5

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, p1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getHeight()I

    move-result v1

    goto :goto_1

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dndListener.onTouchUp() dragView == null, distanceX="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", distanceY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$3;

    invoke-direct {v2, p0, p1, v1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$3;-><init>(Lcom/samsung/android/animation/SemDragAndDropGridAnimator;II)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$4;

    invoke-direct {p1, p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$4;-><init>(Lcom/samsung/android/animation/SemDragAndDropGridAnimator;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0xd2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p1, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->SINE_IN_OUT_70:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mAutoScrollRunnable:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p0}, Landroid/widget/GridView;->invalidate()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist recalculateOffset(II)V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->isLayoutRtl()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "SemDragAndDropGridAnimator"

    if-le p2, p1, :cond_5

    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-gt p1, p2, :cond_b

    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    if-le p1, v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    invoke-interface {v5, v6, p1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrop(II)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v5, p1, -0x1

    move v7, v3

    move v6, v5

    :goto_1
    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mNonMovableItems:Ljava/util/HashSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_0
    sub-int/2addr v5, v7

    div-int v6, v5, v1

    div-int v7, p1, v1

    sub-int/2addr v6, v7

    rem-int/2addr v5, v1

    rem-int v7, p1, v1

    sub-int/2addr v5, v7

    if-eqz v2, :cond_1

    iget v7, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemWidth:I

    mul-int/2addr v5, v7

    mul-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_1
    iget v7, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemWidth:I

    mul-int/2addr v5, v7

    :goto_2
    iget v7, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemHeight:I

    mul-int/2addr v6, v7

    invoke-direct {p0, p1, v5, v6}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->addNewTranslation(III)V

    goto :goto_3

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mNonMovableItems:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    sub-int v6, p1, v0

    invoke-virtual {v5, v6}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "recalculateOffset(\'dragging down\') no such item, i="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    invoke-direct {p0, v5}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->findMovedItemIndex(Landroid/view/View;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->addReturningTranslation(I)V

    :goto_3
    goto :goto_0

    :cond_5
    add-int/lit8 p1, p1, -0x1

    :goto_4
    if-lt p1, p2, :cond_b

    iget v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    if-ge p1, v5, :cond_9

    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget v6, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    invoke-interface {v5, v6, p1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrop(II)Z

    move-result v5

    if-eqz v5, :cond_8

    add-int/lit8 v5, p1, 0x1

    move v7, v3

    move v6, v5

    :goto_5
    iget-object v8, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mNonMovableItems:Ljava/util/HashSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    add-int/2addr v5, v7

    div-int v6, v5, v1

    div-int v7, p1, v1

    sub-int/2addr v6, v7

    rem-int/2addr v5, v1

    rem-int v7, p1, v1

    sub-int/2addr v5, v7

    if-eqz v2, :cond_7

    iget v7, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemWidth:I

    mul-int/2addr v5, v7

    mul-int/lit8 v5, v5, -0x1

    goto :goto_6

    :cond_7
    iget v7, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemWidth:I

    mul-int/2addr v5, v7

    :goto_6
    iget v7, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemHeight:I

    mul-int/2addr v6, v7

    invoke-direct {p0, p1, v5, v6}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->addNewTranslation(III)V

    goto :goto_7

    :cond_8
    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mNonMovableItems:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_9
    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    sub-int v6, p1, v0

    invoke-virtual {v5, v6}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "recalculateOffset(\'dragging up\') no such item, i="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_a
    invoke-direct {p0, v5}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->findMovedItemIndex(Landroid/view/View;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->addReturningTranslation(I)V

    :goto_7
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :cond_b
    return-void
.end method

.method private blacklist startSelectHighlightingAnimation(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mListItemSelectionAnimating:Z

    new-instance p1, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    invoke-direct {p1, v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;->setStartAndDuration(I)V

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->putItemAnimation(ILcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;)V

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->start()V

    return-void
.end method

.method private blacklist updateDragViewBitmap()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragView:Landroid/view/View;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mListItemSelectionAnimating:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchX:I

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchOffsetX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchY:I

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchOffsetY:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewBitmapTranslateX:I

    add-int/2addr v3, v0

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewBitmapTranslateY:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewBitmapTranslateX:I

    add-int/2addr v0, v3

    iput v0, v2, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewBitmapTranslateY:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mTempRect:Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V

    :cond_0
    return-void
.end method

.method public whitelist getDragAndDropOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object p0
.end method

.method public blacklist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

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
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->isDraggable()Z

    move-result p1

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchMode:I

    if-ne p1, v2, :cond_7

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->getCount()I

    move-result p1

    if-le p1, v2, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->activatedByLongPress()Z

    move-result p0

    if-eqz p0, :cond_7

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchMode:I

    if-eqz v0, :cond_7

    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchX:I

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstTouchX:I

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchY:I

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstTouchY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchY:I

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->isDraggable()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->getCount()I

    move-result p1

    if-le p1, v2, :cond_7

    iget-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchX:I

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchY:I

    invoke-virtual {p1, v0, v3}, Landroid/widget/GridView;->pointToPosition(II)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->activatedByLongPress()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    if-ltz p1, :cond_6

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_6

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchX:I

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchY:I

    invoke-direct {p0, v0, v3, p1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->checkStartDnd(III)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->initDrag(I)Z

    move-result p0

    if-eqz p0, :cond_7

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->resetDndState()V

    :cond_7
    :goto_0
    return v1
.end method

.method public blacklist onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-interface/range {p0 .. p5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p0

    return p0
.end method

.method public blacklist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchMode:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->onTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V

    :goto_0
    return v1

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist postDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->drawDragHandlerIfNeeded(Landroid/graphics/Canvas;Landroid/view/View;J)V

    iget p2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mCanvasSaveCount:I

    if-lez p2, :cond_0

    iget p0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mCanvasSaveCount:I

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-void
.end method

.method public blacklist preDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    iget-object p3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p3, p2}, Landroid/widget/GridView;->indexOfChild(Landroid/view/View;)I

    move-result p2

    iget-object p3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p3}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->isDraggable()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    iget p3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    if-ne p2, p3, :cond_0

    iget-boolean p3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDropDonePending:Z

    if-nez p3, :cond_0

    iget-boolean p3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mListItemSelectionAnimating:Z

    if-nez p3, :cond_0

    return p4

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {p3, p2}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    move-result-object p2

    iput p4, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mCanvasSaveCount:I

    if-eqz p2, :cond_1

    iget-object p3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mTempTrans:Landroid/view/animation/Transformation;

    invoke-virtual {p2, p3}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->getTransformation(Landroid/view/animation/Transformation;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mCanvasSaveCount:I

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mTempTrans:Landroid/view/animation/Transformation;

    invoke-virtual {p0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method blacklist reorderIfNeeded()V
    .locals 4

    iget v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchX:I

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchOffsetX:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchY:I

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndTouchOffsetY:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, v1, v2}, Landroid/widget/GridView;->pointToPosition(II)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    invoke-interface {v2, v3, v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrop(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    goto :goto_2

    :cond_0
    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    if-le v2, v1, :cond_2

    :goto_0
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    invoke-interface {v2, v3, v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrop(II)Z

    move-result v2

    if-eqz v2, :cond_1

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    goto :goto_2

    :cond_1
    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    :goto_1
    iget v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    if-le v1, v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget v3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mFirstDragPos:I

    invoke-interface {v2, v3, v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrop(II)Z

    move-result v2

    if-eqz v2, :cond_3

    iput v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    :goto_2
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    if-eq v0, v1, :cond_5

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mListItemSelectionAnimating:Z

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->recalculateOffset(II)V

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->start()V

    :cond_5
    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragPos:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    return-void

    :cond_7
    :goto_3
    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {p0}, Landroid/widget/GridView;->invalidate()V

    return-void
.end method

.method blacklist resetDndPositionValues()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->resetDndPositionValues()V

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mGridView:Landroid/widget/GridView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setEnableHoverDrawable(Z)V

    return-void
.end method

.method blacklist resetDndTouchValuesAndBitmap()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->resetDndTouchValuesAndBitmap()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemWidth:I

    iput v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mItemHeight:I

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mNonMovableItems:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public whitelist setDragAndDropController(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    return-void
.end method

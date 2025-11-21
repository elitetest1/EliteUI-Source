.class Landroid/widget/AbsListView$PositionScroller;
.super Landroid/widget/AbsListView$AbsPositionScroller;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionScroller"
.end annotation


# static fields
.field private static final greylist-max-o MOVE_DOWN_BOUND:I = 0x3

.field private static final greylist-max-o MOVE_DOWN_POS:I = 0x1

.field private static final greylist-max-o MOVE_OFFSET:I = 0x5

.field private static final greylist-max-o MOVE_UP_BOUND:I = 0x4

.field private static final greylist-max-o MOVE_UP_POS:I = 0x2

.field private static final greylist-max-o SCROLL_DURATION:I = 0xc8


# instance fields
.field private greylist-max-o mBoundPos:I

.field private final greylist-max-o mExtraScroll:I

.field private greylist-max-o mLastSeenPos:I

.field private greylist-max-o mMode:I

.field private greylist-max-o mOffsetFromTop:I

.field private greylist-max-o mScrollDuration:I

.field private blacklist mStoredFirstPosition:I

.field private greylist-max-o mTargetPos:I

.field final synthetic blacklist this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Landroid/widget/AbsListView$AbsPositionScroller;-><init>()V

    invoke-static {p1}, Landroid/widget/AbsListView;->access$1700(Landroid/widget/AbsListView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result p1

    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    return-void
.end method

.method private greylist-max-o scrollToVisible(III)V
    .locals 6

    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v4, v4, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    if-lt p1, v0, :cond_0

    if-le p1, v1, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "scrollToVisible called with targetPos "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " not visible ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AbsListView"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-lt p2, v0, :cond_2

    if-le p2, v1, :cond_3

    :cond_2
    const/4 p2, -0x1

    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    const/4 v4, 0x0

    if-le p1, v3, :cond_4

    sub-int/2addr p1, v3

    goto :goto_0

    :cond_4
    move p1, v4

    :goto_0
    if-ge v1, v2, :cond_5

    sub-int p1, v1, v2

    :cond_5
    if-nez p1, :cond_7

    iget-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {p1}, Landroid/widget/AbsListView;->-$$Nest$fgetmJumpScrollToTopState(Landroid/widget/AbsListView;)I

    move-result p1

    invoke-static {}, Landroid/widget/AbsListView;->-$$Nest$sfgetJUMP_SCROLL_TO_TOP_FINISHING()I

    move-result p2

    if-ne p1, p2, :cond_6

    iget-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {}, Landroid/widget/AbsListView;->-$$Nest$sfgetJUMP_SCROLL_TO_TOP_IDLE()I

    move-result p2

    invoke-static {p1, p2}, Landroid/widget/AbsListView;->-$$Nest$fputmJumpScrollToTopState(Landroid/widget/AbsListView;I)V

    iget-object p0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {p0}, Landroid/widget/AbsListView;->-$$Nest$mpostOnJumpScrollToFinished(Landroid/widget/AbsListView;)V

    :cond_6
    return-void

    :cond_7
    if-ltz p2, :cond_9

    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr p2, v0

    invoke-virtual {v1, p2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gez p1, :cond_8

    add-int v5, p2, v1

    if-le v5, v3, :cond_8

    sub-int/2addr p2, v3

    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_1

    :cond_8
    if-lez p1, :cond_9

    sub-int p2, v0, v1

    if-ge p2, v2, :cond_9

    sub-int/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_9
    :goto_1
    iget-object p0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p0, p1, p3}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 14

    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v1, v1, Landroid/widget/AbsListView;->mFirstPosition:I

    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1b

    const/4 v5, 0x2

    if-eq v2, v5, :cond_13

    const/4 v6, 0x3

    if-eq v2, v6, :cond_d

    const/4 v6, 0x4

    if-eq v2, v6, :cond_8

    const/4 v0, 0x5

    if-eq v2, v0, :cond_0

    goto/16 :goto_8

    :cond_0
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_1

    goto/16 :goto_8

    :cond_1
    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    add-int v5, v1, v0

    sub-int/2addr v5, v4

    iget-object v6, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    add-int/lit8 v9, v0, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v10, v7

    const/4 v11, 0x0

    cmpl-float v12, v10, v11

    const/high16 v13, 0x3f800000    # 1.0f

    if-nez v12, :cond_2

    move v6, v13

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v7, v6

    int-to-float v6, v7

    div-float/2addr v6, v10

    :goto_0
    int-to-float v7, v9

    cmpl-float v10, v7, v11

    if-nez v10, :cond_3

    move v8, v13

    goto :goto_1

    :cond_3
    iget-object v10, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    sub-int/2addr v9, v8

    int-to-float v8, v9

    div-float/2addr v8, v7

    :goto_1
    if-ge v2, v1, :cond_4

    sub-int v7, v1, v2

    int-to-float v7, v7

    sub-float v6, v13, v6

    add-float/2addr v7, v6

    add-float v11, v7, v13

    goto :goto_2

    :cond_4
    if-le v2, v5, :cond_5

    sub-int v6, v2, v5

    int-to-float v6, v6

    sub-float v7, v13, v8

    add-float v11, v6, v7

    :cond_5
    :goto_2
    int-to-float v0, v0

    div-float/2addr v11, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v0, v13}, Ljava/lang/Math;->min(FF)F

    move-result v0

    if-ge v2, v1, :cond_6

    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1, v0, v4, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_6
    if-le v2, v5, :cond_7

    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1, v0, v4, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_7
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    int-to-float v1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object p0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p0, v0, v1, v4, v3}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    return-void

    :cond_8
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v5

    if-gez v2, :cond_9

    goto/16 :goto_8

    :cond_9
    add-int/2addr v1, v2

    iget v5, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v1, v5, :cond_a

    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_a
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v6, v0, v2

    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v7, v7, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    iget v8, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    if-le v1, v8, :cond_b

    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr v6, v7

    neg-int v1, v6

    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_b
    sub-int/2addr v0, v7

    add-int/2addr v2, v5

    if-le v0, v2, :cond_c

    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr v0, v2

    neg-int v0, v0

    iget p0, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v1, v0, p0, v4, v3}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    return-void

    :cond_c
    iget-object p0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    return-void

    :cond_d
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    if-eq v1, v2, :cond_12

    if-le v0, v4, :cond_12

    add-int/2addr v0, v1

    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v0, v2, :cond_e

    goto :goto_3

    :cond_e
    add-int/2addr v1, v4

    iget v0, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v1, v0, :cond_f

    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_f
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v5, v5, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    if-ge v1, v6, :cond_10

    iget-object v6, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    add-int/2addr v2, v0

    sub-int/2addr v2, v5

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v6, v0, v2, v4, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_10
    if-le v0, v5, :cond_11

    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr v0, v5

    iget p0, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    invoke-virtual {v1, v0, p0, v4, v3}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    return-void

    :cond_11
    iget-object p0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    return-void

    :cond_12
    :goto_3
    iget-object p0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    return-void

    :cond_13
    iget v0, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v1, v0, :cond_15

    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-$$Nest$msemIsSupportGotoTop(Landroid/widget/AbsListView;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-$$Nest$fgetmSemCanGoFuther(Landroid/widget/AbsListView;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v0, :cond_14

    iget v0, p0, Landroid/widget/AbsListView$PositionScroller;->mStoredFirstPosition:I

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, v3, v3, v3}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(III)V

    :cond_14
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mStoredFirstPosition:I

    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_15
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_16

    goto/16 :goto_8

    :cond_16
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {v2}, Landroid/widget/AbsListView;->-$$Nest$fgetmHasDivier(Landroid/widget/AbsListView;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {v2}, Landroid/widget/AbsListView;->-$$Nest$fgetmHasDividerHeight(Landroid/widget/AbsListView;)I

    move-result v2

    goto :goto_4

    :cond_17
    move v2, v3

    :goto_4
    if-lez v1, :cond_18

    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v5, v5, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    add-int/2addr v5, v4

    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_5

    :cond_18
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    :goto_5
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr v0, v2

    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    iget v6, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-le v1, v6, :cond_19

    move v3, v4

    :cond_19
    invoke-virtual {v5, v0, v2, v4, v3}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    iget v0, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-le v1, v0, :cond_1a

    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_1a
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-$$Nest$fgetmJumpScrollToTopState(Landroid/widget/AbsListView;)I

    move-result v0

    invoke-static {}, Landroid/widget/AbsListView;->-$$Nest$sfgetJUMP_SCROLL_TO_TOP_INITIATED()I

    move-result v1

    if-ne v0, v1, :cond_21

    iget-object p0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {}, Landroid/widget/AbsListView;->-$$Nest$sfgetJUMP_SCROLL_TO_TOP_FINISHING()I

    move-result v0

    invoke-static {p0, v0}, Landroid/widget/AbsListView;->-$$Nest$fputmJumpScrollToTopState(Landroid/widget/AbsListView;I)V

    return-void

    :cond_1b
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v4

    add-int/2addr v1, v2

    if-gez v2, :cond_1c

    goto :goto_8

    :cond_1c
    iget v5, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    if-ne v1, v5, :cond_1d

    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_1d
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {v2}, Landroid/widget/AbsListView;->-$$Nest$fgetmHasDivier(Landroid/widget/AbsListView;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {v2}, Landroid/widget/AbsListView;->-$$Nest$fgetmHasDividerHeight(Landroid/widget/AbsListView;)I

    move-result v2

    goto :goto_6

    :cond_1e
    move v2, v3

    :goto_6
    iget-object v6, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v6, v6, Landroid/widget/AbsListView;->mItemCount:I

    sub-int/2addr v6, v4

    if-ge v1, v6, :cond_1f

    iget-object v6, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v6, v6, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    add-int/2addr v6, v4

    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_7

    :cond_1f
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    :goto_7
    sub-int/2addr v5, v0

    add-int/2addr v5, v2

    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    iget v6, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-ge v1, v6, :cond_20

    move v3, v4

    :cond_20
    invoke-virtual {v0, v5, v2, v4, v3}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    iget v0, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-ge v1, v0, :cond_21

    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_21
    :goto_8
    return-void
.end method

.method public greylist-max-o start(I)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v1, Landroid/widget/AbsListView$PositionScroller$1;

    invoke-direct {v1, p0, p1}, Landroid/widget/AbsListView$PositionScroller$1;-><init>(Landroid/widget/AbsListView$PositionScroller;I)V

    iput-object v1, v0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v1, v1, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v0, v1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCount()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v3, 0xc8

    const/4 v4, -0x1

    if-ge p1, v1, :cond_2

    sub-int/2addr v1, p1

    add-int/2addr v1, v2

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_0

    :cond_2
    if-le p1, v0, :cond_4

    sub-int v0, p1, v0

    add-int/lit8 v1, v0, 0x1

    iput v2, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    :goto_0
    if-lez v1, :cond_3

    div-int/2addr v3, v1

    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_1

    :cond_3
    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    :goto_1
    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    iget-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-$$Nest$fgetmJumpScrollToTopState(Landroid/widget/AbsListView;)I

    move-result v0

    invoke-static {}, Landroid/widget/AbsListView;->-$$Nest$sfgetJUMP_SCROLL_TO_TOP_INITIATED()I

    move-result v1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-static {}, Landroid/widget/AbsListView;->-$$Nest$sfgetJUMP_SCROLL_TO_TOP_FINISHING()I

    move-result v1

    invoke-static {v0, v1}, Landroid/widget/AbsListView;->-$$Nest$fputmJumpScrollToTopState(Landroid/widget/AbsListView;I)V

    :cond_5
    invoke-direct {p0, p1, v4, v3}, Landroid/widget/AbsListView$PositionScroller;->scrollToVisible(III)V

    return-void
.end method

.method public greylist-max-o start(II)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView$PositionScroller;->start(I)V

    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v1, v1, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v1, Landroid/widget/AbsListView$PositionScroller$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/widget/AbsListView$PositionScroller$2;-><init>(Landroid/widget/AbsListView$PositionScroller;II)V

    iput-object v1, v0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v1, v2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    iget-object v4, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getCount()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v4, 0x0

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v4, 0xc8

    if-ge p1, v2, :cond_5

    sub-int/2addr v1, p2

    if-ge v1, v3, :cond_3

    goto :goto_1

    :cond_3
    sub-int/2addr v2, p1

    add-int/2addr v2, v3

    sub-int/2addr v1, v3

    if-ge v1, v2, :cond_4

    const/4 v2, 0x4

    iput v2, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    :goto_0
    move v2, v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_2

    :cond_5
    if-le p1, v1, :cond_9

    sub-int v2, p2, v2

    if-ge v2, v3, :cond_6

    :goto_1
    return-void

    :cond_6
    sub-int v1, p1, v1

    add-int/2addr v1, v3

    sub-int/2addr v2, v3

    if-ge v2, v1, :cond_7

    const/4 v1, 0x3

    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_2

    :cond_7
    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_0

    :goto_2
    if-lez v2, :cond_8

    div-int/2addr v4, v2

    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_3

    :cond_8
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    :goto_3
    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    iput v0, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    iget-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_9
    invoke-direct {p0, p1, p2, v4}, Landroid/widget/AbsListView$PositionScroller;->scrollToVisible(III)V

    return-void
.end method

.method public greylist-max-o startWithOffset(II)V
    .locals 1

    const/16 v0, 0xc8

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/AbsListView$PositionScroller;->startWithOffset(III)V

    return-void
.end method

.method public greylist-max-o startWithOffset(III)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v1, Landroid/widget/AbsListView$PositionScroller$3;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/widget/AbsListView$PositionScroller$3;-><init>(Landroid/widget/AbsListView$PositionScroller;III)V

    iput-object v1, v0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v1

    add-int/2addr p2, v1

    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    const/4 p1, -0x1

    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    const/4 v3, 0x5

    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int v4, v3, v0

    sub-int/2addr v4, v2

    iget v5, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-ge v5, v3, :cond_2

    sub-int/2addr v3, v5

    goto :goto_0

    :cond_2
    if-le v5, v4, :cond_4

    sub-int v3, v5, v4

    :goto_0
    int-to-float p2, v3

    int-to-float v0, v0

    div-float/2addr p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    goto :goto_1

    :cond_3
    int-to-float p3, p3

    div-float/2addr p3, p2

    float-to-int p3, p3

    :goto_1
    iput p3, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    iget-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    iget-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr v5, v3

    invoke-virtual {p1, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget-object p0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1, p3, v2, v1}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    return-void
.end method

.method public greylist-max-o stop()V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

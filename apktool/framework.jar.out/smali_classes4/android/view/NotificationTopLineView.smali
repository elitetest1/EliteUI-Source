.class public Landroid/view/NotificationTopLineView;
.super Landroid/view/ViewGroup;
.source "NotificationTopLineView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/NotificationTopLineView$OverflowAdjuster;,
        Landroid/view/NotificationTopLineView$HeaderTouchListener;
    }
.end annotation


# instance fields
.field private blacklist mAppName:Landroid/view/View;

.field private final blacklist mChildHideWidth:I

.field private final blacklist mChildMinWidth:I

.field private blacklist mFeedbackIcon:Landroid/view/View;

.field private blacklist mFeedbackListener:Landroid/view/View$OnClickListener;

.field private final blacklist mGravityY:I

.field private blacklist mHeaderText:Landroid/view/View;

.field private blacklist mHeaderTextDivider:Landroid/view/View;

.field private blacklist mHeaderTextMarginEnd:I

.field private blacklist mMaxAscent:I

.field private blacklist mMaxDescent:I

.field private final blacklist mOverflowAdjuster:Landroid/view/NotificationTopLineView$OverflowAdjuster;

.field private blacklist mSecondaryHeaderText:Landroid/view/View;

.field private blacklist mSecondaryHeaderTextDivider:Landroid/view/View;

.field private blacklist mTime:Landroid/view/View;

.field private blacklist mTitle:Landroid/view/View;

.field private blacklist mTouchListener:Landroid/view/NotificationTopLineView$HeaderTouchListener;

.field private blacklist mViewsToDisappear:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChildHideWidth(Landroid/view/NotificationTopLineView;)I
    .locals 0

    iget p0, p0, Landroid/view/NotificationTopLineView;->mChildHideWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFeedbackIcon(Landroid/view/NotificationTopLineView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroid/view/NotificationTopLineView;->mFeedbackIcon:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViewsToDisappear(Landroid/view/NotificationTopLineView;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Landroid/view/NotificationTopLineView;->mViewsToDisappear:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetFirstChildNotGone(Landroid/view/NotificationTopLineView;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Landroid/view/NotificationTopLineView;->getFirstChildNotGone()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/NotificationTopLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/NotificationTopLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/NotificationTopLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/view/NotificationTopLineView$OverflowAdjuster;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/NotificationTopLineView$OverflowAdjuster;-><init>(Landroid/view/NotificationTopLineView;Landroid/view/NotificationTopLineView-IA;)V

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mOverflowAdjuster:Landroid/view/NotificationTopLineView$OverflowAdjuster;

    new-instance v0, Landroid/view/NotificationTopLineView$HeaderTouchListener;

    invoke-direct {v0, p0}, Landroid/view/NotificationTopLineView$HeaderTouchListener;-><init>(Landroid/view/NotificationTopLineView;)V

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mTouchListener:Landroid/view/NotificationTopLineView$HeaderTouchListener;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mViewsToDisappear:Ljava/util/Set;

    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105035f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/view/NotificationTopLineView;->mChildMinWidth:I

    const v1, 0x105035e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/NotificationTopLineView;->mChildHideWidth:I

    const v0, 0x10100af

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    and-int/lit8 p1, p2, 0x50

    const/16 p3, 0x50

    if-ne p1, p3, :cond_0

    iput p3, p0, Landroid/view/NotificationTopLineView;->mGravityY:I

    return-void

    :cond_0
    const/16 p1, 0x30

    and-int/2addr p2, p1

    if-ne p2, p1, :cond_1

    iput p1, p0, Landroid/view/NotificationTopLineView;->mGravityY:I

    return-void

    :cond_1
    const/16 p1, 0x10

    iput p1, p0, Landroid/view/NotificationTopLineView;->mGravityY:I

    return-void
.end method

.method private blacklist getFirstChildNotGone()Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private blacklist updateTouchListener()V
    .locals 1

    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mFeedbackListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mTouchListener:Landroid/view/NotificationTopLineView$HeaderTouchListener;

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p0, p0, Landroid/view/NotificationTopLineView;->mTouchListener:Landroid/view/NotificationTopLineView$HeaderTouchListener;

    invoke-virtual {p0}, Landroid/view/NotificationTopLineView$HeaderTouchListener;->bindTouchRects()V

    return-void
.end method


# virtual methods
.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public blacklist getHeaderTextMarginEnd()I
    .locals 0

    iget p0, p0, Landroid/view/NotificationTopLineView;->mHeaderTextMarginEnd:I

    return p0
.end method

.method public whitelist hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isInTouchRect(FF)Z
    .locals 1

    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mFeedbackListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroid/view/NotificationTopLineView;->mTouchListener:Landroid/view/NotificationTopLineView$HeaderTouchListener;

    invoke-static {p0, p1, p2}, Landroid/view/NotificationTopLineView$HeaderTouchListener;->-$$Nest$misInside(Landroid/view/NotificationTopLineView$HeaderTouchListener;FF)Z

    move-result p0

    return p0
.end method

.method public blacklist isTitlePresent()Z
    .locals 0

    iget-object p0, p0, Landroid/view/NotificationTopLineView;->mTitle:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected whitelist onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x102021d

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mAppName:Landroid/view/View;

    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mTitle:Landroid/view/View;

    const v0, 0x1020372

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mHeaderText:Landroid/view/View;

    const v0, 0x1020373

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mHeaderTextDivider:Landroid/view/View;

    const v0, 0x1020374

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mSecondaryHeaderText:Landroid/view/View;

    const v0, 0x1020375

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mSecondaryHeaderTextDivider:Landroid/view/View;

    const v0, 0x1020317

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mFeedbackIcon:Landroid/view/View;

    const v0, 0x1020690

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mTime:Landroid/view/View;

    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 10

    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x0

    const/4 p4, 0x1

    if-ne p1, p4, :cond_0

    goto :goto_0

    :cond_0
    move p4, p2

    :goto_0
    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getChildCount()I

    move-result v1

    sub-int/2addr p5, p3

    iget p3, p0, Landroid/view/NotificationTopLineView;->mPaddingTop:I

    sub-int p3, p5, p3

    iget v2, p0, Landroid/view/NotificationTopLineView;->mPaddingBottom:I

    sub-int/2addr p3, v2

    iget v2, p0, Landroid/view/NotificationTopLineView;->mPaddingTop:I

    iget v3, p0, Landroid/view/NotificationTopLineView;->mMaxAscent:I

    iget v4, p0, Landroid/view/NotificationTopLineView;->mMaxDescent:I

    add-int/2addr v4, v3

    sub-int v4, p3, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    :goto_1
    if-ge p2, v1, :cond_b

    invoke-virtual {p0, p2}, Landroid/view/NotificationTopLineView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v6

    iget v7, p0, Landroid/view/NotificationTopLineView;->mGravityY:I

    const/16 v8, 0x10

    const/4 v9, -0x1

    if-eq v7, v8, :cond_5

    const/16 v8, 0x30

    if-eq v7, v8, :cond_3

    const/16 v8, 0x50

    if-eq v7, v8, :cond_2

    iget v6, p0, Landroid/view/NotificationTopLineView;->mPaddingTop:I

    goto :goto_2

    :cond_2
    iget v7, p0, Landroid/view/NotificationTopLineView;->mPaddingBottom:I

    sub-int v7, p5, v7

    sub-int/2addr v7, v4

    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v7, v8

    if-eq v6, v9, :cond_4

    sub-int v6, v4, v6

    iget v8, p0, Landroid/view/NotificationTopLineView;->mMaxDescent:I

    sub-int/2addr v8, v6

    sub-int v6, v7, v8

    goto :goto_2

    :cond_3
    iget v7, p0, Landroid/view/NotificationTopLineView;->mPaddingTop:I

    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v7, v8

    if-eq v6, v9, :cond_4

    iget v8, p0, Landroid/view/NotificationTopLineView;->mMaxAscent:I

    sub-int/2addr v8, v6

    add-int v6, v7, v8

    goto :goto_2

    :cond_4
    move v6, v7

    goto :goto_2

    :cond_5
    if-eq v6, v9, :cond_7

    sub-int v7, p3, v4

    if-lez v7, :cond_6

    sub-int v6, v2, v6

    goto :goto_2

    :cond_6
    iget v6, p0, Landroid/view/NotificationTopLineView;->mPaddingTop:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    goto :goto_2

    :cond_7
    iget v6, p0, Landroid/view/NotificationTopLineView;->mPaddingTop:I

    sub-int v7, p3, v4

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    :goto_2
    iget-object v7, p0, Landroid/view/NotificationTopLineView;->mViewsToDisappear:Ljava/util/Set;

    invoke-interface {v7, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    add-int/2addr v4, v6

    invoke-virtual {v3, v0, v6, v0, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_5

    :cond_8
    invoke-virtual {v5}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v7

    add-int/2addr v0, v7

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v0

    if-eqz p4, :cond_9

    sub-int v8, p1, v7

    goto :goto_3

    :cond_9
    move v8, v0

    :goto_3
    if-eqz p4, :cond_a

    sub-int v0, p1, v0

    goto :goto_4

    :cond_a
    move v0, v7

    :goto_4
    invoke-virtual {v5}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v5

    add-int/2addr v7, v5

    add-int/2addr v4, v6

    invoke-virtual {v3, v8, v6, v0, v4}, Landroid/view/View;->layout(IIII)V

    move v0, v7

    :goto_5
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_1

    :cond_b
    invoke-direct {p0}, Landroid/view/NotificationTopLineView;->updateTouchListener()V

    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 13

    const-string v0, "NotificationTopLineView#onMeasure"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    if-ne p2, v2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    :goto_1
    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getPaddingStart()I

    move-result v4

    const/4 v5, -0x1

    iput v5, p0, Landroid/view/NotificationTopLineView;->mMaxAscent:I

    iput v5, p0, Landroid/view/NotificationTopLineView;->mMaxDescent:I

    move v6, v1

    move v7, v5

    :goto_2
    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getChildCount()I

    move-result v8

    if-ge v6, v8, :cond_4

    invoke-virtual {p0, v6}, Landroid/view/NotificationTopLineView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v10, v11

    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v3, v10, v11}, Landroid/view/NotificationTopLineView;->getChildMeasureSpec(III)I

    move-result v10

    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v2, v11, v12}, Landroid/view/NotificationTopLineView;->getChildMeasureSpec(III)I

    move-result v11

    invoke-virtual {v8, v10, v11}, Landroid/view/View;->measure(II)V

    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v10, v9

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v10, v9

    add-int/2addr v4, v10

    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    if-eq v9, v5, :cond_3

    iget v10, p0, Landroid/view/NotificationTopLineView;->mMaxAscent:I

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Landroid/view/NotificationTopLineView;->mMaxAscent:I

    iget v10, p0, Landroid/view/NotificationTopLineView;->mMaxDescent:I

    sub-int v9, v8, v9

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Landroid/view/NotificationTopLineView;->mMaxDescent:I

    :cond_3
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    iget-object v3, p0, Landroid/view/NotificationTopLineView;->mViewsToDisappear:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    iget v3, p0, Landroid/view/NotificationTopLineView;->mHeaderTextMarginEnd:I

    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getPaddingEnd()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v5, p1, v3

    if-le v4, v5, :cond_5

    sub-int/2addr v4, p1

    add-int/2addr v4, v3

    iget-object v3, p0, Landroid/view/NotificationTopLineView;->mOverflowAdjuster:Landroid/view/NotificationTopLineView$OverflowAdjuster;

    invoke-virtual {v3, v4, v2}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->resetForOverflow(II)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v2

    iget-object v3, p0, Landroid/view/NotificationTopLineView;->mAppName:Landroid/view/View;

    iget v4, p0, Landroid/view/NotificationTopLineView;->mChildMinWidth:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->adjust(Landroid/view/View;Landroid/view/View;I)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v2

    iget-object v3, p0, Landroid/view/NotificationTopLineView;->mHeaderText:Landroid/view/View;

    iget-object v4, p0, Landroid/view/NotificationTopLineView;->mHeaderTextDivider:Landroid/view/View;

    iget v6, p0, Landroid/view/NotificationTopLineView;->mChildMinWidth:I

    invoke-virtual {v2, v3, v4, v6}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->adjust(Landroid/view/View;Landroid/view/View;I)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v2

    iget-object v3, p0, Landroid/view/NotificationTopLineView;->mSecondaryHeaderText:Landroid/view/View;

    iget-object v4, p0, Landroid/view/NotificationTopLineView;->mSecondaryHeaderTextDivider:Landroid/view/View;

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->adjust(Landroid/view/View;Landroid/view/View;I)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v2

    iget-object v3, p0, Landroid/view/NotificationTopLineView;->mTitle:Landroid/view/View;

    iget v4, p0, Landroid/view/NotificationTopLineView;->mChildMinWidth:I

    invoke-virtual {v2, v3, v5, v4}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->adjust(Landroid/view/View;Landroid/view/View;I)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v2

    iget-object v3, p0, Landroid/view/NotificationTopLineView;->mTime:Landroid/view/View;

    iget v4, p0, Landroid/view/NotificationTopLineView;->mChildMinWidth:I

    invoke-virtual {v2, v3, v5, v4}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->adjust(Landroid/view/View;Landroid/view/View;I)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v2

    iget-object v3, p0, Landroid/view/NotificationTopLineView;->mHeaderText:Landroid/view/View;

    iget-object v4, p0, Landroid/view/NotificationTopLineView;->mHeaderTextDivider:Landroid/view/View;

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->adjust(Landroid/view/View;Landroid/view/View;I)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->finish()V

    :cond_5
    if-eqz p2, :cond_6

    move v0, v7

    :cond_6
    invoke-virtual {p0, p1, v0}, Landroid/view/NotificationTopLineView;->setMeasuredDimension(II)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public blacklist onTouchUp(FFFF)Z
    .locals 1

    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mFeedbackListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroid/view/NotificationTopLineView;->mTouchListener:Landroid/view/NotificationTopLineView$HeaderTouchListener;

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/NotificationTopLineView$HeaderTouchListener;->-$$Nest$monTouchUp(Landroid/view/NotificationTopLineView$HeaderTouchListener;FFFF)Z

    move-result p0

    return p0
.end method

.method public blacklist setFeedbackOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iput-object p1, p0, Landroid/view/NotificationTopLineView;->mFeedbackListener:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Landroid/view/NotificationTopLineView;->updateTouchListener()V

    return-void
.end method

.method public blacklist setHeaderTextMarginEnd(I)V
    .locals 1

    iget v0, p0, Landroid/view/NotificationTopLineView;->mHeaderTextMarginEnd:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/view/NotificationTopLineView;->mHeaderTextMarginEnd:I

    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public blacklist setPaddingStart(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/NotificationTopLineView;->setPaddingRelative(IIII)V

    return-void
.end method

.class Landroid/media/Cea708CCWidget$ScaledLayout;
.super Landroid/view/ViewGroup;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScaledLayout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ScaledLayout"

.field private static final greylist-max-o mRectTopLeftSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mRectArray:[Landroid/graphics/Rect;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/Cea708CCWidget$ScaledLayout$1;

    invoke-direct {v0}, Landroid/media/Cea708CCWidget$ScaledLayout$1;-><init>()V

    sput-object v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectTopLeftSorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    return p0
.end method

.method public whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {p0, v3}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    array-length v6, v5

    if-lt v3, v6, :cond_0

    goto :goto_1

    :cond_0
    aget-object v5, v5, v3

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v0

    iget-object v6, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v6, v6, v3

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    int-to-float v5, v5

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v4, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 4

    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildCount()I

    move-result p3

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_1

    invoke-virtual {p0, p4}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v0, v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iget-object v1, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v1, v1, p4

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p2

    iget-object v2, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v2, v2, p4

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, p1

    iget-object v3, p0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v3, v3, p4

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, p2

    invoke-virtual {p5, v0, v1, v3, v2}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 19

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getPaddingLeft()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {v0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getPaddingTop()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {v0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildCount()I

    move-result v5

    new-array v6, v5, [Landroid/graphics/Rect;

    iput-object v6, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_7

    invoke-virtual {v0, v7}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    instance-of v10, v9, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    if-eqz v10, :cond_6

    check-cast v9, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    iget v10, v9, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleStartRow:F

    iget v11, v9, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleEndRow:F

    iget v12, v9, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleStartCol:F

    iget v9, v9, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleEndCol:F

    const/4 v13, 0x0

    cmpg-float v14, v10, v13

    if-ltz v14, :cond_5

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v15, v10, v14

    if-gtz v15, :cond_5

    cmpg-float v16, v11, v10

    if-ltz v16, :cond_4

    if-gtz v15, :cond_4

    cmpg-float v13, v9, v13

    if-ltz v13, :cond_3

    cmpl-float v13, v9, v14

    if-gtz v13, :cond_3

    cmpg-float v14, v9, v12

    if-ltz v14, :cond_2

    if-gtz v13, :cond_2

    iget-object v13, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    new-instance v14, Landroid/graphics/Rect;

    int-to-float v15, v3

    mul-float v6, v12, v15

    float-to-int v6, v6

    move/from16 p2, v3

    int-to-float v3, v4

    move/from16 v16, v3

    mul-float v3, v10, v16

    float-to-int v3, v3

    move/from16 v17, v7

    mul-float v7, v9, v15

    float-to-int v7, v7

    move/from16 v18, v9

    mul-float v9, v11, v16

    float-to-int v9, v9

    invoke-direct {v14, v6, v3, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v14, v13, v17

    sub-float v9, v18, v12

    mul-float/2addr v15, v9

    float-to-int v3, v15

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/4 v7, 0x0

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v8, v3, v9}, Landroid/view/View;->measure(II)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget-object v9, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v9, v9, v17

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-le v7, v9, :cond_1

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget-object v9, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v9, v9, v17

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int/2addr v7, v9

    add-int/lit8 v7, v7, 0x1

    div-int/lit8 v7, v7, 0x2

    iget-object v9, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v9, v9, v17

    iget v12, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v7

    iput v12, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v9, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v9, v9, v17

    iget v12, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v7

    iput v12, v9, Landroid/graphics/Rect;->top:I

    iget-object v7, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v7, v7, v17

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-gez v7, :cond_0

    iget-object v7, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v7, v7, v17

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v12, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v12, v12, v17

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v12

    iput v9, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v7, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v7, v7, v17

    const/4 v9, 0x0

    iput v9, v7, Landroid/graphics/Rect;->top:I

    :cond_0
    iget-object v7, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v7, v7, v17

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-le v7, v4, :cond_1

    iget-object v7, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v7, v7, v17

    iget v9, v7, Landroid/graphics/Rect;->top:I

    iget-object v12, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v12, v12, v17

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v4

    sub-int/2addr v9, v12

    iput v9, v7, Landroid/graphics/Rect;->top:I

    iget-object v7, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v7, v7, v17

    iput v4, v7, Landroid/graphics/Rect;->bottom:I

    :cond_1
    sub-float/2addr v11, v10

    mul-float v7, v16, v11

    float-to-int v7, v7

    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v8, v3, v6}, Landroid/view/View;->measure(II)V

    add-int/lit8 v7, v17, 0x1

    move/from16 v3, p2

    goto/16 :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of ScaledLayout should have a range of scaleEndCol between scaleStartCol and 1"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of ScaledLayout should have a range of scaleStartCol between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of ScaledLayout should have a range of scaleEndRow between scaleStartRow and 1"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of ScaledLayout should have a range of scaleStartRow between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of ScaledLayout cannot have the UNSPECIFIED scale factors"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-array v3, v5, [I

    new-array v6, v5, [Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v7, v5, :cond_9

    invoke-virtual {v0, v7}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_8

    aput v8, v3, v8

    iget-object v9, v0, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectArray:[Landroid/graphics/Rect;

    aget-object v9, v9, v7

    aput-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_9
    sget-object v5, Landroid/media/Cea708CCWidget$ScaledLayout;->mRectTopLeftSorter:Ljava/util/Comparator;

    const/4 v7, 0x0

    invoke-static {v6, v7, v8, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    move v5, v7

    :goto_2
    add-int/lit8 v9, v8, -0x1

    if-ge v5, v9, :cond_c

    add-int/lit8 v9, v5, 0x1

    move v10, v9

    :goto_3
    if-ge v10, v8, :cond_b

    aget-object v11, v6, v5

    aget-object v12, v6, v10

    invoke-static {v11, v12}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v11

    if-eqz v11, :cond_a

    aget v11, v3, v5

    aput v11, v3, v10

    aget-object v11, v6, v10

    iget v12, v11, Landroid/graphics/Rect;->left:I

    aget-object v13, v6, v5

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    aget-object v14, v6, v10

    iget v14, v14, Landroid/graphics/Rect;->right:I

    aget-object v15, v6, v5

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    aget-object v16, v6, v10

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v16

    add-int v15, v15, v16

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_b
    move v5, v9

    goto :goto_2

    :cond_c
    :goto_4
    if-ltz v9, :cond_f

    aget-object v5, v6, v9

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-le v5, v4, :cond_e

    aget-object v5, v6, v9

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v4

    move v8, v7

    :goto_5
    if-gt v8, v9, :cond_e

    aget v10, v3, v9

    aget v11, v3, v8

    if-ne v10, v11, :cond_d

    aget-object v10, v6, v8

    iget v11, v10, Landroid/graphics/Rect;->left:I

    aget-object v12, v6, v8

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v5

    aget-object v13, v6, v8

    iget v13, v13, Landroid/graphics/Rect;->right:I

    aget-object v14, v6, v8

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v5

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_e
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    :cond_f
    invoke-virtual {v0, v1, v2}, Landroid/media/Cea708CCWidget$ScaledLayout;->setMeasuredDimension(II)V

    return-void
.end method

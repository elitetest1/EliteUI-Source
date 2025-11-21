.class public Lcom/android/internal/widget/BackgroundFallback;
.super Ljava/lang/Object;
.source "BackgroundFallback.java"


# instance fields
.field private blacklist mBackgroundFallback:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist isOpaque(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist viewsCoverEntireWidth(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    if-gtz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p1

    if-lt p0, p1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p0

    if-lt p0, p3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist draw(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/graphics/Canvas;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {v0}, Lcom/android/internal/widget/BackgroundFallback;->hasFallback()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    move v11, v4

    move v12, v5

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v10, v8, :cond_4

    move-object/from16 v15, p2

    invoke-virtual {v15, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move/from16 v16, v6

    invoke-virtual {v9}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move/from16 v17, v7

    move-object/from16 v7, p4

    if-ne v9, v7, :cond_1

    if-nez v6, :cond_2

    instance-of v6, v9, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    move-object v6, v9

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-nez v18, :cond_3

    invoke-direct {v0, v6}, Lcom/android/internal/widget/BackgroundFallback;->isOpaque(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v6

    add-int v6, v16, v6

    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v6

    add-int v6, v17, v6

    invoke-static {v12, v6}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v6

    add-int v6, v16, v6

    invoke-static {v13, v6}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v6

    add-int v6, v17, v6

    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v14

    :cond_3
    :goto_1
    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v16

    move/from16 v7, v17

    goto :goto_0

    :cond_4
    const/4 v6, 0x1

    move v8, v6

    const/4 v7, 0x0

    :goto_2
    const/4 v9, 0x2

    if-ge v7, v9, :cond_d

    if-nez v7, :cond_5

    move-object v9, v2

    goto :goto_3

    :cond_5
    move-object v9, v3

    :goto_3
    if-eqz v9, :cond_c

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_c

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v10

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v15

    if-nez v10, :cond_c

    invoke-virtual {v9}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/internal/widget/BackgroundFallback;->isOpaque(Landroid/graphics/drawable/Drawable;)Z

    move-result v10

    if-nez v10, :cond_6

    goto/16 :goto_5

    :cond_6
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-gtz v10, :cond_7

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    if-lt v10, v5, :cond_7

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    if-gtz v10, :cond_7

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    if-lt v10, v11, :cond_7

    const/4 v11, 0x0

    :cond_7
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-gtz v10, :cond_8

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    if-lt v10, v5, :cond_8

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    if-gt v10, v13, :cond_8

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    if-lt v10, v4, :cond_8

    move v13, v4

    :cond_8
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-gtz v10, :cond_9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    if-lt v10, v12, :cond_9

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    if-gtz v10, :cond_9

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    if-lt v10, v4, :cond_9

    const/4 v12, 0x0

    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-gt v10, v14, :cond_a

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    if-lt v10, v5, :cond_a

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    if-gtz v10, :cond_a

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    if-lt v10, v4, :cond_a

    move v14, v5

    :cond_a
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-gtz v10, :cond_b

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    if-lt v9, v12, :cond_b

    move v9, v6

    goto :goto_4

    :cond_b
    const/4 v9, 0x0

    :goto_4
    and-int/2addr v8, v9

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v8, 0x0

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_d
    if-eqz v8, :cond_f

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/widget/BackgroundFallback;->viewsCoverEntireWidth(Landroid/view/View;Landroid/view/View;I)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-direct {v0, v3, v2, v4}, Lcom/android/internal/widget/BackgroundFallback;->viewsCoverEntireWidth(Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    const/4 v12, 0x0

    :cond_f
    if-ge v11, v13, :cond_14

    if-lt v12, v14, :cond_10

    goto :goto_8

    :cond_10
    if-lez v12, :cond_11

    iget-object v2, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v4, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_7

    :cond_11
    const/4 v3, 0x0

    :goto_7
    if-lez v11, :cond_12

    iget-object v2, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v12, v11, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_12
    if-ge v13, v4, :cond_13

    iget-object v2, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v13, v12, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_13
    if-ge v14, v5, :cond_14

    iget-object v2, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v11, v14, v13, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_14
    :goto_8
    return-void
.end method

.method public blacklist getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public blacklist hasFallback()Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    return-void
.end method

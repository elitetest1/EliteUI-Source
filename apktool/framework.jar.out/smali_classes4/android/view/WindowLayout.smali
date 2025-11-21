.class public Landroid/view/WindowLayout;
.super Ljava/lang/Object;
.source "WindowLayout.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field static final blacklist MAX_X:I = 0x186a0

.field static final blacklist MAX_Y:I = 0x186a0

.field static final blacklist MIN_X:I = -0x186a0

.field static final blacklist MIN_Y:I = -0x186a0

.field private static final blacklist TAG:Ljava/lang/String; = "WindowLayout"

.field public static final blacklist UNSPECIFIED_LENGTH:I = -0x1


# instance fields
.field private final blacklist mTempDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

.field private final blacklist mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowLayout;->mTempDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static blacklist computeSurfaceSize(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;IILandroid/graphics/Rect;ZLandroid/graphics/Point;)V
    .locals 1

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p3

    goto :goto_0

    :cond_1
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p3

    :goto_0
    const/4 p1, 0x1

    if-ge p2, p1, :cond_2

    move p2, p1

    :cond_2
    if-ge p3, p1, :cond_3

    move p3, p1

    :cond_3
    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget p1, p0, Landroid/graphics/Rect;->left:I

    iget p4, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p4

    add-int/2addr p2, p1

    iget p1, p0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p0

    add-int/2addr p3, p1

    invoke-virtual {p6, p2, p3}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public static blacklist extendFrameByCutout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    invoke-static {v0, p0, p3}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static blacklist ignoreCutoutMode(Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 1

    const/4 p0, 0x5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    sget-boolean p0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-eqz p0, :cond_2

    invoke-static {p2}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist intersectOrClamp(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method public blacklist computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;)V
    .locals 14

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v13}, Landroid/view/WindowLayout;->computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;ILandroid/graphics/Rect;Z)V

    return-void
.end method

.method public blacklist computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;ILandroid/graphics/Rect;Z)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p10

    move-object/from16 v7, p12

    iget v8, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/16 v11, 0x100

    and-int/2addr v9, v11

    if-ne v9, v11, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    iget-object v11, v6, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    iget-object v14, v6, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    iget-object v15, v6, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    iget-object v13, v6, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v12

    move/from16 v17, v9

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->isFitInsetsIgnoringVisibility()Z

    move-result v9

    invoke-virtual {v2, v4, v12, v9}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v9

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsSides()I

    move-result v12

    and-int/lit8 v18, v12, 0x1

    if-eqz v18, :cond_1

    move/from16 v18, v10

    iget v10, v9, Landroid/graphics/Insets;->left:I

    goto :goto_1

    :cond_1
    move/from16 v18, v10

    const/4 v10, 0x0

    :goto_1
    and-int/lit8 v19, v12, 0x2

    if-eqz v19, :cond_2

    move/from16 v19, v10

    iget v10, v9, Landroid/graphics/Insets;->top:I

    goto :goto_2

    :cond_2
    move/from16 v19, v10

    const/4 v10, 0x0

    :goto_2
    and-int/lit8 v20, v12, 0x4

    if-eqz v20, :cond_3

    move/from16 v20, v10

    iget v10, v9, Landroid/graphics/Insets;->right:I

    goto :goto_3

    :cond_3
    move/from16 v20, v10

    const/4 v10, 0x0

    :goto_3
    and-int/lit8 v12, v12, 0x8

    if-eqz v12, :cond_4

    iget v9, v9, Landroid/graphics/Insets;->bottom:I

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    iget v12, v4, Landroid/graphics/Rect;->left:I

    add-int v12, v12, v19

    move/from16 v19, v9

    iget v9, v4, Landroid/graphics/Rect;->top:I

    add-int v9, v9, v20

    move/from16 v20, v10

    iget v10, v4, Landroid/graphics/Rect;->right:I

    sub-int v10, v10, v20

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v4, v19

    invoke-virtual {v14, v12, v9, v10, v4}, Landroid/graphics/Rect;->set(IIII)V

    if-nez v11, :cond_5

    invoke-virtual {v15, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/high16 v4, 0x40000000    # 2.0f

    and-int v4, v18, v4

    if-eqz v4, :cond_7

    sget v4, Landroid/view/InsetsSource;->ID_IME:I

    invoke-virtual {v2, v4}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v4

    if-eqz v4, :cond_7

    const/4 v9, 0x0

    invoke-virtual {v4, v15, v9}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    goto :goto_6

    :cond_5
    if-nez v17, :cond_6

    move-object v4, v11

    goto :goto_5

    :cond_6
    move-object v4, v14

    :goto_5
    invoke-virtual {v15, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_7
    :goto_6
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {v2}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v9

    iget-object v10, v0, Landroid/view/WindowLayout;->mTempDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v12, 0x0

    iput-boolean v12, v6, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    move/from16 v12, p11

    invoke-static {v1, v5, v12}, Landroid/view/WindowLayout;->ignoreCutoutMode(Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v12

    move-object/from16 p4, v9

    if-eqz v12, :cond_9

    :cond_8
    move-object/from16 v21, v13

    goto/16 :goto_e

    :cond_9
    const/4 v12, 0x3

    if-eq v4, v12, :cond_a

    invoke-virtual/range {p4 .. p4}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_b

    :cond_a
    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->FW_USE_UDC_CUTOUT_TO_SHOW_LETTERBOX:Z

    if-eqz v12, :cond_8

    if-eqz p13, :cond_8

    :cond_b
    invoke-virtual {v2}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v12

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v9

    move-object/from16 v20, v11

    const/4 v11, 0x1

    invoke-virtual {v2, v12, v9, v11}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v9

    iget v11, v9, Landroid/graphics/Insets;->top:I

    if-lez v11, :cond_c

    iget v11, v10, Landroid/graphics/Rect;->top:I

    if-lez v11, :cond_c

    iget v9, v9, Landroid/graphics/Insets;->top:I

    iget v11, v10, Landroid/graphics/Rect;->top:I

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v10, Landroid/graphics/Rect;->top:I

    :cond_c
    const/4 v11, 0x1

    if-ne v4, v11, :cond_e

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-ge v9, v11, :cond_d

    const v9, -0x186a0

    iput v9, v10, Landroid/graphics/Rect;->top:I

    const v11, 0x186a0

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    goto :goto_7

    :cond_d
    const v9, -0x186a0

    const v11, 0x186a0

    iput v9, v10, Landroid/graphics/Rect;->left:I

    iput v11, v10, Landroid/graphics/Rect;->right:I

    :cond_e
    :goto_7
    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v11, 0x10000

    and-int/2addr v9, v11

    if-eqz v9, :cond_f

    const/4 v9, 0x1

    goto :goto_8

    :cond_f
    const/4 v9, 0x0

    :goto_8
    if-eqz v17, :cond_14

    if-eqz v9, :cond_14

    if-eqz v4, :cond_10

    const/4 v11, 0x1

    if-ne v4, v11, :cond_14

    :cond_10
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v4

    move/from16 v9, p8

    invoke-virtual {v2, v12, v4, v9}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;II)Landroid/graphics/Insets;

    move-result-object v4

    iget v9, v4, Landroid/graphics/Insets;->left:I

    invoke-virtual/range {p4 .. p4}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v11

    if-lt v9, v11, :cond_11

    const v9, -0x186a0

    iput v9, v10, Landroid/graphics/Rect;->left:I

    goto :goto_9

    :cond_11
    const v9, -0x186a0

    :goto_9
    iget v11, v4, Landroid/graphics/Insets;->top:I

    move-object/from16 v21, v13

    invoke-virtual/range {p4 .. p4}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v13

    if-lt v11, v13, :cond_12

    iput v9, v10, Landroid/graphics/Rect;->top:I

    :cond_12
    iget v9, v4, Landroid/graphics/Insets;->right:I

    invoke-virtual/range {p4 .. p4}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v11

    if-lt v9, v11, :cond_13

    const v11, 0x186a0

    iput v11, v10, Landroid/graphics/Rect;->right:I

    goto :goto_a

    :cond_13
    const v11, 0x186a0

    :goto_a
    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    invoke-virtual/range {p4 .. p4}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v9

    if-lt v4, v9, :cond_15

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    goto :goto_b

    :cond_14
    move-object/from16 v21, v13

    const v11, 0x186a0

    :cond_15
    :goto_b
    const/16 v4, 0x7db

    if-ne v8, v4, :cond_16

    iget v4, v10, Landroid/graphics/Rect;->bottom:I

    if-eq v4, v11, :cond_16

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v4

    const/4 v9, 0x1

    invoke-virtual {v2, v12, v4, v9}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    if-lez v2, :cond_16

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    :cond_16
    if-eqz v20, :cond_17

    if-nez v17, :cond_17

    const/4 v2, 0x1

    goto :goto_c

    :cond_17
    const/4 v2, 0x0

    :goto_c
    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v4

    if-nez v4, :cond_18

    if-eqz v17, :cond_18

    const/4 v11, 0x1

    if-eq v8, v11, :cond_18

    const/4 v4, 0x1

    goto :goto_d

    :cond_18
    const/4 v4, 0x0

    :goto_d
    if-nez v2, :cond_19

    if-nez v4, :cond_19

    iget-object v2, v0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-static {v15, v10}, Landroid/view/WindowLayout;->intersectOrClamp(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v2, v0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v15}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v16, 0x1

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, v6, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    :cond_19
    invoke-static {v14, v10}, Landroid/view/WindowLayout;->intersectOrClamp(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_e
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_1a

    const/4 v9, 0x1

    goto :goto_f

    :cond_1a
    const/4 v9, 0x0

    :goto_f
    invoke-static {v5}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v2

    if-eqz v9, :cond_1b

    const/16 v4, 0x7da

    if-eq v8, v4, :cond_1b

    if-nez v2, :cond_1b

    const v4, -0x186a0

    iput v4, v14, Landroid/graphics/Rect;->left:I

    iput v4, v14, Landroid/graphics/Rect;->top:I

    const v11, 0x186a0

    iput v11, v14, Landroid/graphics/Rect;->right:I

    iput v11, v14, Landroid/graphics/Rect;->bottom:I

    :cond_1b
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, p9, v4

    if-eqz v4, :cond_1c

    const/4 v4, 0x1

    goto :goto_10

    :cond_1c
    const/4 v4, 0x0

    :goto_10
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v10, v10, 0x1000

    if-eqz v10, :cond_1d

    const/4 v10, 0x1

    goto :goto_11

    :cond_1d
    const/4 v10, 0x0

    :goto_11
    const/4 v11, -0x1

    move/from16 v12, p6

    if-eq v12, v11, :cond_1f

    if-eqz v10, :cond_1e

    goto :goto_13

    :cond_1e
    :goto_12
    move/from16 v13, p7

    goto :goto_14

    :cond_1f
    :goto_13
    iget v12, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ltz v12, :cond_20

    iget v12, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_12

    :cond_20
    move v12, v6

    goto :goto_12

    :goto_14
    if-eq v13, v11, :cond_21

    if-eqz v10, :cond_23

    :cond_21
    iget v13, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ltz v13, :cond_22

    iget v13, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_15

    :cond_22
    move v13, v8

    :cond_23
    :goto_15
    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v11, v11, 0x4000

    const/high16 v17, 0x3f000000    # 0.5f

    if-eqz v11, :cond_28

    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-gez v11, :cond_24

    move v11, v6

    goto :goto_16

    :cond_24
    if-eqz v4, :cond_25

    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v11, v11

    mul-float v11, v11, p9

    add-float v11, v11, v17

    float-to-int v11, v11

    goto :goto_16

    :cond_25
    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_16
    iget v12, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-gez v12, :cond_26

    move/from16 p4, v2

    move v13, v8

    goto :goto_1a

    :cond_26
    if-eqz v4, :cond_27

    iget v12, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v12, v12

    mul-float v12, v12, p9

    add-float v12, v12, v17

    float-to-int v13, v12

    goto :goto_17

    :cond_27
    iget v13, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_17
    move/from16 p4, v2

    goto :goto_1a

    :cond_28
    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 p4, v2

    const/4 v2, -0x1

    if-ne v11, v2, :cond_29

    move v12, v6

    goto :goto_18

    :cond_29
    if-eqz v4, :cond_2a

    int-to-float v11, v12

    mul-float v11, v11, p9

    add-float v11, v11, v17

    float-to-int v12, v11

    :cond_2a
    :goto_18
    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v11, v2, :cond_2c

    move v13, v8

    :cond_2b
    :goto_19
    move v11, v12

    goto :goto_1a

    :cond_2c
    if-eqz v4, :cond_2b

    int-to-float v2, v13

    mul-float v2, v2, p9

    add-float v2, v2, v17

    float-to-int v13, v2

    goto :goto_19

    :goto_1a
    if-eqz v4, :cond_2d

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    mul-float v2, v2, p9

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v4, v4

    mul-float v4, v4, p9

    goto :goto_1b

    :cond_2d
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v4, v4

    :goto_1b
    if-eqz p4, :cond_2e

    iget v12, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v12, v12, 0x4000

    if-nez v12, :cond_2e

    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v13, v8}, Ljava/lang/Math;->min(II)I

    move-result v13

    :cond_2e
    const/4 v12, 0x5

    if-ne v5, v12, :cond_2f

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v12, 0x3

    if-ne v5, v12, :cond_2f

    const/4 v5, 0x1

    goto :goto_1c

    :cond_2f
    const/4 v5, 0x0

    :goto_1c
    if-eqz p4, :cond_31

    iget v12, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 p2, v2

    const/4 v2, 0x1

    if-eq v12, v2, :cond_30

    if-nez v5, :cond_30

    if-nez v9, :cond_30

    goto :goto_1d

    :cond_30
    const/4 v12, 0x0

    goto :goto_1e

    :cond_31
    move/from16 p2, v2

    const/4 v2, 0x1

    :goto_1d
    move v12, v2

    :goto_1e
    if-eqz v7, :cond_32

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_32

    iget v2, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, p9

    add-float v5, v5, v17

    float-to-int v5, v5

    add-int/2addr v2, v5

    iput v2, v15, Landroid/graphics/Rect;->bottom:I

    iget v2, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, p9

    add-float v5, v5, v17

    float-to-int v5, v5

    add-int/2addr v2, v5

    iput v2, v15, Landroid/graphics/Rect;->right:I

    :cond_32
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float v5, p2, v5

    float-to-int v5, v5

    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    int-to-float v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    float-to-int v4, v4

    move/from16 p4, v2

    move/from16 p9, v4

    move/from16 p8, v5

    move/from16 p5, v11

    move/from16 p6, v13

    move-object/from16 p7, v15

    move-object/from16 p10, v21

    invoke-static/range {p4 .. p10}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    move-object/from16 v2, p10

    if-eqz v12, :cond_33

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {v1, v14, v2}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_33
    if-eqz v10, :cond_34

    iget-object v0, v0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-static {v3, v14, v2, v0}, Landroid/view/WindowLayout;->extendFrameByCutout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_34
    return-void
.end method

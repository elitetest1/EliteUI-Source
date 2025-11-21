.class public Lcom/android/internal/view/TooltipPopup;
.super Ljava/lang/Object;
.source "TooltipPopup.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "TooltipPopup"


# instance fields
.field private greylist-max-o mContentView:Landroid/view/View;

.field private greylist-max-o mContext:Landroid/content/Context;

.field private blacklist mIsCaptionMenuButton:Z

.field private blacklist mIsCaptionPopupButton:Z

.field private final blacklist mIsDeviceDefault:Z

.field private blacklist mIsDexMode:Z

.field private blacklist mLastOrientation:I

.field private final greylist-max-o mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final greylist-max-o mMessageView:Landroid/widget/TextView;

.field private final blacklist mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final greylist-max-o mTmpAnchorPos:[I

.field private final greylist-max-o mTmpAppPos:[I

.field private final greylist-max-o mTmpDisplayFrame:Landroid/graphics/Rect;


# direct methods
.method public static synthetic blacklist $r8$lambda$1ouZ0og0lJt6VvW6QESaHQY37cY(Lcom/android/internal/view/TooltipPopup;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/internal/view/TooltipPopup;->lambda$new$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    const/4 v2, 0x2

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    new-instance v2, Lcom/android/internal/view/TooltipPopup$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/view/TooltipPopup$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/view/TooltipPopup;)V

    iput-object v2, p0, Lcom/android/internal/view/TooltipPopup;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/view/TooltipPopup;->mIsDexMode:Z

    iput-boolean v2, p0, Lcom/android/internal/view/TooltipPopup;->mIsCaptionMenuButton:Z

    iput-boolean v2, p0, Lcom/android/internal/view/TooltipPopup;->mIsCaptionPopupButton:Z

    iput-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x11200b3

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v4, v3, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v6, v2

    :goto_0
    iput-boolean v6, p0, Lcom/android/internal/view/TooltipPopup;->mIsDeviceDefault:Z

    iput-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x10104a9

    invoke-virtual {v4, v5, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v3, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_1

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget v3, v3, Landroid/util/TypedValue;->data:I

    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    :cond_1
    if-eqz v6, :cond_2

    iget-object v2, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10901b0

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10901dd

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    const v2, 0x102000b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/internal/view/TooltipPopup;->mLastOrientation:I

    iget-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const v0, 0x1040fc3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/16 p0, 0x3ed

    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 p0, -0x2

    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 p0, -0x3

    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const p0, 0x1030322

    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 p0, 0x18

    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method private greylist-max-o computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v6, p5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v1, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050619

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-boolean v2, v0, Lcom/android/internal/view/TooltipPopup;->mIsDeviceDefault:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v2, v3

    :goto_0
    move v4, v2

    goto :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lt v2, v1, :cond_1

    move/from16 v4, p2

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v2, v3

    goto :goto_0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v5, 0x0

    if-lt v2, v1, :cond_2

    iget-object v1, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050618

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int v2, p3, v1

    sub-int v1, p3, v1

    goto :goto_2

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v2

    move v1, v5

    :goto_2
    const/16 v7, 0x31

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v7, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz p4, :cond_3

    const v8, 0x105061d

    goto :goto_3

    :cond_3
    const v8, 0x105061c

    :goto_3
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/WindowManagerGlobal;->getWindowView(Landroid/os/IBinder;)Landroid/view/View;

    move-result-object v8

    const-string v9, "TooltipPopup"

    if-nez v8, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v8

    goto :goto_4

    :cond_4
    const-string v0, "Cannot find app view"

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    :goto_4
    iget-object v10, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v10}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v8}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-virtual {v10}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "left inset = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_6
    move v10, v5

    :goto_5
    new-array v11, v3, [I

    invoke-virtual {v8, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    move v12, v2

    new-instance v2, Landroid/graphics/Rect;

    aget v13, v11, v5

    const/4 v14, 0x1

    aget v15, v11, v14

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v16

    move/from16 v17, v3

    add-int v3, v13, v16

    aget v11, v11, v14

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v16

    add-int v11, v11, v16

    invoke-direct {v2, v13, v15, v3, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v11, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v10

    iput v11, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v11, v2, Landroid/graphics/Rect;->right:I

    iput v11, v3, Landroid/graphics/Rect;->right:I

    iget-object v3, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    invoke-virtual {v8, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v3, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    move-object/from16 v8, p1

    invoke-virtual {v8, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    sget-boolean v3, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "computePosition - displayFrame left : "

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "computePosition - displayFrame right : "

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "computePosition - displayFrame top : "

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "computePosition - displayFrame bottom : "

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "computePosition - anchorView locationOnScreen x : "

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget v11, v11, v5

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "computePosition - anchorView locationOnScreen y : "

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget v11, v11, v14

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "computePosition - appView locationOnScreen x : "

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    aget v11, v11, v5

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "computePosition - appView locationOnScreen y : "

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    aget v11, v11, v14

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v3, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget v9, v3, v5

    iget-object v11, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    aget v13, v11, v5

    sub-int/2addr v9, v13

    aput v9, v3, v5

    aget v13, v3, v14

    aget v11, v11, v14

    sub-int/2addr v13, v11

    aput v13, v3, v14

    iget-boolean v3, v0, Lcom/android/internal/view/TooltipPopup;->mIsDeviceDefault:Z

    if-eqz v3, :cond_8

    invoke-direct {v0}, Lcom/android/internal/view/TooltipPopup;->semUpdateMaxWidth()V

    move/from16 v3, p4

    move-object v1, v8

    move v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/TooltipPopup;->semComputePositionForMultiWindow(Landroid/view/View;Landroid/graphics/Rect;ZIILandroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_8
    add-int/2addr v9, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v9, v2

    iput v9, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v3, v0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v3, v2, v2}, Landroid/view/View;->measure(II)V

    iget-object v2, v0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget v3, v3, v14

    add-int/2addr v1, v3

    sub-int/2addr v1, v7

    sub-int/2addr v1, v2

    add-int/2addr v3, v12

    add-int/2addr v3, v7

    if-eqz p4, :cond_a

    if-ltz v1, :cond_9

    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void

    :cond_9
    iput v3, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void

    :cond_a
    add-int/2addr v2, v3

    iget-object v0, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gt v2, v0, :cond_b

    iput v3, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void

    :cond_b
    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method

.method private blacklist getYAbove(Landroid/view/View;I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/view/TooltipPopup;->isFreeForm()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget p0, p0, v0

    sub-int/2addr p0, p2

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Insets;->top:I

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p0, p1

    :cond_1
    :goto_0
    return p0

    :cond_2
    iget-object p0, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget p0, p0, v0

    sub-int/2addr p0, p2

    return p0
.end method

.method private blacklist isEmbedded()Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->isEmbedded()Z

    move-result p0

    return p0
.end method

.method private blacklist isFreeForm()Z
    .locals 1

    iget-object p0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isFullScreen()Z
    .locals 2

    iget-object p0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    if-ne p0, v1, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isSplitWindow()Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-static {p0}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$new$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget p2, p0, Lcom/android/internal/view/TooltipPopup;->mLastOrientation:I

    if-eq p2, p1, :cond_0

    iget-object p2, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    iput p1, p0, Lcom/android/internal/view/TooltipPopup;->mLastOrientation:I

    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->hide()V

    :cond_0
    return-void
.end method

.method private blacklist semComputePositionForMultiWindow(Landroid/view/View;Landroid/graphics/Rect;ZIILandroid/view/WindowManager$LayoutParams;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v5, v0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v5, v4, v4}, Landroid/view/View;->measure(II)V

    iget-object v4, v0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    const/4 v5, 0x2

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget-object v6, v0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget-object v7, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10504d6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iget-object v8, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v9, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v9, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    iget v10, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int v11, v10, v7

    if-le v6, v11, :cond_0

    move v6, v11

    :cond_0
    iget-object v11, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    sub-int/2addr v11, v7

    invoke-direct {v0}, Lcom/android/internal/view/TooltipPopup;->isSplitWindow()Z

    move-result v12

    if-eqz v12, :cond_1

    if-le v6, v11, :cond_1

    iget-object v12, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x105018a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    if-lt v11, v12, :cond_1

    move v6, v11

    :cond_1
    invoke-direct {v0}, Lcom/android/internal/view/TooltipPopup;->isFreeForm()Z

    move-result v11

    const-string v12, "TooltipPopup"

    if-eqz v11, :cond_2

    invoke-direct {v0}, Lcom/android/internal/view/TooltipPopup;->isEmbedded()Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "Add Flag FLAG_LAYOUT_NO_LIMITS for free form mode"

    invoke-static {v12, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v11, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v11, v11, 0x200

    iput v11, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_2
    iget v11, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v11, v11, -0x201

    iput v11, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_FREEFORM:Z

    const/4 v13, 0x1

    if-eqz v11, :cond_3

    move-object/from16 v11, p1

    invoke-direct {v0, v11, v4}, Lcom/android/internal/view/TooltipPopup;->getYAbove(Landroid/view/View;I)I

    move-result v14

    goto :goto_1

    :cond_3
    move-object/from16 v11, p1

    iget-object v14, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget v14, v14, v13

    sub-int/2addr v14, v4

    :goto_1
    iget-object v15, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget v15, v15, v13

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v16

    add-int v15, v15, v16

    if-eqz p3, :cond_6

    invoke-virtual {v11}, Landroid/view/View;->getLayoutDirection()I

    move-result v16

    if-nez v16, :cond_4

    move/from16 v16, v3

    iget-object v3, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget v3, v3, v16

    add-int v16, v3, p4

    sub-int v16, v16, v6

    add-int v16, v16, v7

    add-int v17, v16, v6

    add-int v3, v3, p4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v18

    add-int v18, v18, v6

    div-int/lit8 v18, v18, 0x2

    sub-int v3, v3, v18

    add-int/2addr v3, v7

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_2

    :cond_4
    move/from16 v16, v3

    iget-object v3, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget v3, v3, v16

    add-int v16, v3, p4

    sub-int v16, v16, v7

    add-int v17, v16, v6

    add-int v3, v3, p4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v18

    sub-int v18, v18, v6

    div-int/lit8 v18, v18, 0x2

    sub-int v3, v3, v18

    sub-int/2addr v3, v7

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_2
    add-int v3, v15, v4

    iget-object v5, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v3, v5, :cond_5

    iget-boolean v3, v0, Lcom/android/internal/view/TooltipPopup;->mIsCaptionMenuButton:Z

    if-nez v3, :cond_5

    iget-boolean v3, v0, Lcom/android/internal/view/TooltipPopup;->mIsCaptionPopupButton:Z

    if-nez v3, :cond_5

    iput v14, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    :cond_5
    iput v15, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    :cond_6
    move/from16 v16, v3

    iget-object v3, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget v3, v3, v16

    add-int v3, v3, p4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/2addr v7, v5

    sub-int/2addr v3, v7

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget v3, v3, v16

    add-int v3, v3, p4

    div-int/lit8 v5, v6, 0x2

    sub-int v16, v3, v5

    add-int v17, v16, v6

    if-ltz v14, :cond_7

    iput v14, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    :cond_7
    add-int v3, v15, v4

    iget-object v5, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-gt v3, v5, :cond_8

    iput v15, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    :cond_8
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v3, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v14

    if-ltz v3, :cond_9

    iput v14, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    :cond_9
    iput v15, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_3
    move/from16 v3, v17

    iget v5, v1, Landroid/graphics/Rect;->left:I

    add-int v5, v16, v5

    iget v7, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v3

    sub-int/2addr v7, v10

    iget v10, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v15, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v15

    sub-int/2addr v10, v8

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Display;->getRotation()I

    move-result v15

    move/from16 v17, v13

    const/4 v13, 0x3

    if-ne v15, v13, :cond_a

    if-eqz p5, :cond_b

    iget-object v13, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x10502f2

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    sub-int/2addr v5, v13

    sub-int/2addr v7, v13

    goto :goto_4

    :cond_a
    if-nez v15, :cond_b

    iget-object v13, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x10502f0

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    add-int/2addr v10, v13

    :cond_b
    :goto_4
    if-gez v5, :cond_c

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v3, v5

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_5

    :cond_c
    if-lez v7, :cond_d

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v3, v7

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_5

    :cond_d
    if-gez v16, :cond_e

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v3, v3, v16

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_5

    :cond_e
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-le v3, v5, :cond_f

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v13

    sub-int/2addr v3, v13

    sub-int/2addr v5, v3

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_f
    :goto_5
    if-lez v10, :cond_10

    iput v14, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_10
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_TOOLTIP:Z

    if-eqz v3, :cond_11

    iget-boolean v3, v0, Lcom/android/internal/view/TooltipPopup;->mIsCaptionPopupButton:Z

    if-eqz v3, :cond_11

    invoke-virtual {v11}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v11}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    if-eqz v3, :cond_11

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v10, v3, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v10, v10, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v10

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_11
    iget-object v3, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    aget v3, v3, v17

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v3, v5

    add-int/2addr v3, v4

    if-le v3, v8, :cond_12

    iput v14, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_12
    iget-object v0, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lt v0, v6, :cond_13

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lt v0, v4, :cond_13

    if-lez v7, :cond_15

    :cond_13
    invoke-interface {v9}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->top:I

    if-lt v14, v0, :cond_14

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_14
    const-string v0, "Add Flag FLAG_LAYOUT_NO_LIMITS for small window"

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ge v0, v4, :cond_16

    const-string v0, "Add Flag LAYOUT_CHILD_WINDOW_IN_PARENT_FRAME for small height window"

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-void

    :cond_16
    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-void
.end method

.method private blacklist semUpdateMaxWidth()V
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105047f

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    :goto_0
    float-to-int v0, v0

    goto :goto_1

    :cond_0
    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    :cond_2
    iget-object p0, p0, Lcom/android/internal/view/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    return-void
.end method


# virtual methods
.method public greylist-max-o getContentView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public greylist-max-o hide()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public greylist-max-o isShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist semShowActionItemTooltip(IIILjava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p4, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, p4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez p3, :cond_1

    iget-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const p2, 0x800035

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const p2, 0x800033

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_0
    iget-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public blacklist setForCaptionMenuButton()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/TooltipPopup;->mIsCaptionMenuButton:Z

    return-void
.end method

.method public blacklist setForCaptionPopupButton()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/TooltipPopup;->mIsCaptionPopupButton:Z

    return-void
.end method

.method public greylist-max-o show(Landroid/view/View;IIZLjava/lang/CharSequence;)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->WIDGET_HOVER_POPUP:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const-string p0, "TooltipPopup"

    const-string/jumbo p1, "show - anchorView is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->WIDGET_HOVER_POPUP:Z

    if-eqz v0, :cond_2

    if-nez p4, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->semGetHoverPopupType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->hide()V

    :cond_3
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p5, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/view/TooltipPopup;->computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_TOOLTIP:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/internal/view/TooltipPopup;->mIsCaptionMenuButton:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/internal/view/TooltipPopup;->mIsCaptionPopupButton:Z

    if-eqz p1, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 p2, p2, 0x8

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    iget-boolean p1, p0, Lcom/android/internal/view/TooltipPopup;->mIsCaptionPopupButton:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    :cond_5
    iget-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.class Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;
.super Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemImageOverflowMenuButton"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-direct {p0, p1, p2}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    sget-object v0, Lcom/android/internal/R$styleable;->ImageView:[I

    const/4 v1, 0x0

    const v2, 0x10102f6

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setLongClickable(Z)V

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fputmTooltipText(Landroid/widget/ActionMenuPresenter;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private blacklist checkNaviBarForLandscape()Z
    .locals 7

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    const-string/jumbo v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const v4, 0x10502f0

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v3, Landroid/graphics/Point;->x:I

    if-lt v5, v6, :cond_0

    iget v0, v3, Landroid/graphics/Point;->x:I

    iget v1, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setNavigationBarHeight(I)V

    return v4

    :cond_0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    iget v0, v2, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_1

    iget v0, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setNavigationBarHeight(I)V

    return v4

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getNavigationBarHeight()I
    .locals 0

    iget-object p0, p0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {p0}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fgetmNavigationBarHeight(Landroid/widget/ActionMenuPresenter;)I

    move-result p0

    return p0
.end method

.method private blacklist setNavigationBarHeight(I)V
    .locals 0

    iget-object p0, p0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {p0, p1}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fputmNavigationBarHeight(Landroid/widget/ActionMenuPresenter;I)V

    return-void
.end method


# virtual methods
.method public whitelist dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setTooltipNull(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fgetmTooltipText(Landroid/widget/ActionMenuPresenter;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setTooltipText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setTooltipNull(Z)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setTooltipOffset()V

    invoke-super {p0, p1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method blacklist getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/android/internal/R$styleable;->View:[I

    const/4 v1, 0x0

    const v2, 0x10102f6

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 v0, 0x25

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setMinimumHeight(I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/android/internal/R$styleable;->ImageView:[I

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public whitelist performClick()Z
    .locals 2

    invoke-super {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->playSoundEffect(I)V

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->isHovered()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getTooltip()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setTooltipNull(Z)V

    :cond_1
    return v1
.end method

.method public whitelist performLongClick()Z
    .locals 0

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setTooltipOffset()V

    invoke-super {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->performLongClick()Z

    move-result p0

    return p0
.end method

.method protected whitelist setFrame(IIII)Z
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->setFrame(IIII)Z

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getHeight()I

    move-result p4

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    const/4 p0, 0x0

    add-int/2addr p2, v0

    invoke-virtual {p3, v0, p0, p2, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_0
    return p1
.end method

.method blacklist setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected blacklist setTooltipOffset()V
    .locals 14

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    invoke-virtual {p0, v3}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getLocationOnScreen([I)V

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getPaddingStart()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getPaddingEnd()I

    move-result v7

    new-array v8, v2, [I

    invoke-virtual {p0, v8}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getLocationInWindow([I)V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v9}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const-string/jumbo v10, "window"

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v10}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$500(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$600(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    instance-of v11, v0, Landroid/widget/Toolbar;

    const/4 v12, 0x0

    if-eqz v11, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v11, v9, Landroid/graphics/Rect;->right:I

    iget v13, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v13

    if-ge v0, v11, :cond_1

    aget v0, v3, v12

    aget v3, v8, v12

    sub-int/2addr v0, v3

    iget v3, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    goto :goto_1

    :cond_1
    move v0, v12

    :goto_1
    const/4 v3, 0x1

    aget v3, v8, v3

    add-int/2addr v3, v5

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getLayoutDirection()I

    move-result v5

    if-nez v5, :cond_2

    iget v5, v9, Landroid/graphics/Rect;->right:I

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v9

    aget v8, v8, v12

    add-int/2addr v8, v4

    sub-int/2addr v5, v8

    sub-int/2addr v4, v6

    sub-int/2addr v4, v7

    div-int/2addr v4, v2

    add-int/2addr v5, v4

    sub-int/2addr v5, v0

    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->checkNaviBarForLandscape()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getNavigationBarHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iget v2, v10, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr v5, v0

    goto :goto_2

    :cond_2
    aget v0, v8, v12

    add-int/2addr v0, v6

    sub-int/2addr v7, v6

    div-int/2addr v7, v2

    add-int v5, v0, v7

    :cond_3
    :goto_2
    invoke-virtual {p0, v5, v3}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setTooltipPosition(II)V

    return-void
.end method

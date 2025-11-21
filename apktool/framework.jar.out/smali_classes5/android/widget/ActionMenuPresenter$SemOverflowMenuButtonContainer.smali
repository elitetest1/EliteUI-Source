.class Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;
.super Landroid/widget/FrameLayout;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/widget/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SemOverflowMenuButtonContainer"
.end annotation


# static fields
.field private static final blacklist BADGE_LIMIT_NUMBER:I = 0x63


# instance fields
.field private blacklist mBadgeAdditionalWidth:F

.field private blacklist mBadgeDefaultWidth:F

.field private blacklist mBadgeView:Landroid/widget/TextView;

.field private blacklist mButtonView:Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

.field private blacklist mNumberFormat:Ljava/text/NumberFormat;

.field final synthetic blacklist this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mNumberFormat:Ljava/text/NumberFormat;

    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fgetmUseTextItemMode(Landroid/widget/ActionMenuPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;

    invoke-direct {v0, p1, p2}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;

    invoke-direct {v0, p1, p2}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mButtonView:Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p2}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->access$300(Landroid/widget/ActionMenuPresenter;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x109016a

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x105043e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeAdditionalWidth:F

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x105043f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeDefaultWidth:F

    return-void
.end method


# virtual methods
.method blacklist getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mButtonView:Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method blacklist invalidateBadgeText()V
    .locals 5

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$400(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->semGetSumOfDigitsInBadges()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getOverflowBadgeText()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10504f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v0, 0x63

    if-le v1, v0, :cond_3

    move v1, v0

    :cond_3
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mNumberFormat:Ljava/text/NumberFormat;

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    iget v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeDefaultWidth:F

    iget v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeAdditionalWidth:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeDefaultWidth:F

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    int-to-float v1, v1

    iget v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeAdditionalWidth:F

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10504f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10504f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_1
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public blacklist needsDividerAfter()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist needsDividerBefore()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10504f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x105043f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeDefaultWidth:F

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x105043e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeAdditionalWidth:F

    iget-object p1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeDefaultWidth:F

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeAdditionalWidth:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10504f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10504f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getLayoutDirection()I

    move-result v3

    if-ne v2, v3, :cond_0

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    :cond_0
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_0
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int/2addr p1, v1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_3

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mButtonView:Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->View:[I

    const v4, 0x10102f6

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v2, 0x24

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-le p1, v2, :cond_2

    iput p1, v1, Landroid/widget/ActionMenuView$LayoutParams;->width:I

    goto :goto_2

    :cond_2
    iput v2, v1, Landroid/widget/ActionMenuView$LayoutParams;->width:I

    :goto_2
    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method blacklist setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mButtonView:Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

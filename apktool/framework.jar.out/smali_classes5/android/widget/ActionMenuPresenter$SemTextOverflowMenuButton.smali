.class Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;
.super Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemTextOverflowMenuButton"
.end annotation


# static fields
.field private static final blacklist MAX_FONT_SCALE:F = 1.2f


# instance fields
.field private blacklist mCurrentFontScale:F

.field private blacklist mDefaultTextSize:F

.field final synthetic blacklist this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 3
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

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-direct {p0, p1, p2}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mCurrentFontScale:F

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/android/internal/R$styleable;->Theme:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 v0, 0xbb

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->setTextAppearance(I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x10408e5

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->setText(Ljava/lang/CharSequence;)V

    sget-object p1, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v0, :cond_1

    iget p1, v0, Landroid/util/TypedValue;->data:I

    invoke-static {p1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result p1

    iput p1, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mDefaultTextSize:F

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput p1, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mCurrentFontScale:F

    const p2, 0x3f99999a    # 1.2f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    iput p2, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mCurrentFontScale:F

    :cond_0
    iget p1, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mDefaultTextSize:F

    iget p2, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mCurrentFontScale:F

    mul-float/2addr p1, p2

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->setTextSize(IF)V

    :cond_1
    return-void
.end method


# virtual methods
.method blacklist getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    const v2, 0x10102f6

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x25

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->setMinimumHeight(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fgetmIsThemeDeviceDefaultFamily(Landroid/widget/ActionMenuPresenter;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v1, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mCurrentFontScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput p1, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mCurrentFontScale:F

    const v0, 0x3f99999a    # 1.2f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    iput v0, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mCurrentFontScale:F

    :cond_0
    iget p1, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mDefaultTextSize:F

    iget v0, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mCurrentFontScale:F

    mul-float/2addr p1, v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->setTextSize(IF)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10408e5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->onMeasure(II)V

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

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->playSoundEffect(I)V

    iget-object p0, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    return v1
.end method

.method blacklist setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

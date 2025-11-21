.class abstract Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;
.super Landroid/widget/TextView;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SemOverflowMenuButton"
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 1
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

    const/4 p1, 0x0

    const v0, 0x10102f6

    invoke-direct {p0, p2, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->setClickable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->setFocusable(Z)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->setVisibility(I)V

    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->setEnabled(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->semSetButtonShapeEnabled(Z)V

    return-void
.end method


# virtual methods
.method abstract blacklist getDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .locals 0

    return-void
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/android/internal/R$styleable;->View:[I

    const v1, 0x10102f6

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string p0, "android.widget.Button"

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    return-void
.end method

.method abstract blacklist setImageDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

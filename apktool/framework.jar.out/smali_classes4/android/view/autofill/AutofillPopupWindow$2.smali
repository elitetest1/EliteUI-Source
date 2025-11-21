.class Landroid/view/autofill/AutofillPopupWindow$2;
.super Landroid/view/View;
.source "AutofillPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/autofill/AutofillPopupWindow;->update(Landroid/view/View;IIIILandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$anchor:Landroid/view/View;

.field final synthetic blacklist val$mLocationOnScreen:[I


# direct methods
.method constructor blacklist <init>(Landroid/view/autofill/AutofillPopupWindow;Landroid/content/Context;[ILandroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p3, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$mLocationOnScreen:[I

    iput-object p4, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public whitelist addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .locals 0

    iget-object p0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public blacklist getAccessibilityViewId()I
    .locals 0

    iget-object p0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result p0

    return p0
.end method

.method public whitelist getApplicationWindowToken()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getLayoutDirection()I
    .locals 0

    iget-object p0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    return p0
.end method

.method public whitelist getLocationOnScreen([I)V
    .locals 2

    iget-object p0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$mLocationOnScreen:[I

    const/4 v0, 0x0

    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x1

    aget p0, p0, v0

    aput p0, p1, v0

    return-void
.end method

.method public whitelist getRootView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getViewTreeObserver()Landroid/view/ViewTreeObserver;
    .locals 0

    iget-object p0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getWindowDisplayFrame(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->getWindowDisplayFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method public whitelist getWindowToken()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public whitelist isAttachedToWindow()Z
    .locals 0

    iget-object p0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    return p0
.end method

.method public whitelist removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .locals 0

    iget-object p0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public whitelist requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z
    .locals 0

    iget-object p0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result p0

    return p0
.end method

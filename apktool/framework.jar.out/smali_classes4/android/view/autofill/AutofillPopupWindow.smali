.class public Landroid/view/autofill/AutofillPopupWindow;
.super Landroid/widget/PopupWindow;
.source "AutofillPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "AutofillPopupWindow"


# instance fields
.field private greylist-max-o mFullScreen:Z

.field private final greylist-max-o mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private greylist-max-o mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final greylist-max-o mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/view/autofill/IAutofillWindowPresenter;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    new-instance v0, Landroid/view/autofill/AutofillPopupWindow$1;

    invoke-direct {v0, p0}, Landroid/view/autofill/AutofillPopupWindow$1;-><init>(Landroid/view/autofill/AutofillPopupWindow;)V

    iput-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v0, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    invoke-direct {v0, p0, p1}, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;-><init>(Landroid/view/autofill/AutofillPopupWindow;Landroid/view/autofill/IAutofillWindowPresenter;)V

    iput-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillPopupWindow;->setTouchModal(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillPopupWindow;->setOutsideTouchable(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setInputMethodMode(I)V

    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillPopupWindow;->setFocusable(Z)V

    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillPopupWindow;->setIsClippedToScreen(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$update$0([ILandroid/view/View;IIII)V
    .locals 1

    const/4 p1, 0x0

    aget v0, p0, p1

    sub-int/2addr p2, p4

    sub-int/2addr v0, p2

    aput v0, p0, p1

    const/4 p1, 0x1

    aget p2, p0, p1

    sub-int/2addr p3, p5

    sub-int/2addr p2, p3

    aput p2, p0, p1

    return-void
.end method


# virtual methods
.method protected greylist-max-o attachToAnchor(Landroid/view/View;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    iget-object p0, p0, Landroid/view/autofill/AutofillPopupWindow;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method protected greylist-max-o detachFromAnchor()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getAnchor()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/view/autofill/AutofillPopupWindow;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    return-void
.end method

.method public whitelist dismiss()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isTransitioningToDismiss()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setShowing(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setTransitioningToDismiss(Z)V

    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->hide(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->detachFromAnchor()V

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object p0

    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected greylist-max-o findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mFullScreen:Z

    if-eqz v0, :cond_0

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p5, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p6, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    iput p7, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super/range {p0 .. p8}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result p0

    return p0
.end method

.method public whitelist getAnimationStyle()I
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You can\'t call this!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You can\'t call this!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getContentView()Landroid/view/View;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You can\'t call this!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected greylist-max-o getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public whitelist getElevation()F
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You can\'t call this!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getEnterTransition()Landroid/transition/Transition;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You can\'t call this!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getExitTransition()Landroid/transition/Transition;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You can\'t call this!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected greylist-max-o hasContentView()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected greylist-max-o hasDecorView()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You can\'t call this!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist setContentView(Landroid/view/View;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You can\'t call this!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist setElevation(F)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You can\'t call this!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist setEnterTransition(Landroid/transition/Transition;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You can\'t call this!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist setExitTransition(Landroid/transition/Transition;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You can\'t call this!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You can\'t call this!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist showAsDropDown(Landroid/view/View;III)V
    .locals 10

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "showAsDropDown(): anchor="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", xoff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", yoff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isShowing(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillPopupWindow"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setShowing(Z)V

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setDropDown(Z)V

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillPopupWindow;->attachToAnchor(Landroid/view/View;III)V

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput-object v3, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getAllowScrollingAnchorParent()Z

    move-result v9

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v8, p4

    invoke-virtual/range {v1 .. v9}, Landroid/view/autofill/AutofillPopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result p0

    invoke-virtual {v1, p0}, Landroid/view/autofill/AutofillPopupWindow;->updateAboveAnchor(Z)V

    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityViewId()I

    move-result p0

    int-to-long p0, p0

    iput-wide p0, v3, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object p0, v1, Landroid/view/autofill/AutofillPopupWindow;->mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    invoke-virtual {v1}, Landroid/view/autofill/AutofillPopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v1}, Landroid/view/autofill/AutofillPopupWindow;->isLayoutInsetDecor()Z

    move-result p2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    move-result p3

    invoke-virtual {p0, v3, p1, p2, p3}, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->show(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)V

    return-void
.end method

.method public greylist-max-o update(Landroid/view/View;IIIILandroid/graphics/Rect;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p4, v2, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Landroid/view/autofill/AutofillPopupWindow;->mFullScreen:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x7d8

    goto :goto_1

    :cond_1
    const/16 v3, 0x3ed

    :goto_1
    invoke-virtual {p0, v3}, Landroid/view/autofill/AutofillPopupWindow;->setWindowLayoutType(I)V

    iget-boolean v3, p0, Landroid/view/autofill/AutofillPopupWindow;->mFullScreen:Z

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Landroid/view/WindowManager;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    invoke-interface {p2}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p2

    invoke-static {p2}, Landroid/window/WindowMetricsHelper;->getBoundsExcludingNavigationBarAndCutout(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p4

    if-eq p5, v2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    sub-int/2addr p2, p5

    move p3, p2

    goto :goto_2

    :cond_2
    move p3, v1

    :goto_2
    move p2, v1

    goto :goto_3

    :cond_3
    if-eqz p6, :cond_4

    iget v3, p6, Landroid/graphics/Rect;->left:I

    iget v4, p6, Landroid/graphics/Rect;->top:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    new-instance v4, Landroid/view/autofill/AutofillPopupWindow$2;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5, v3, p1}, Landroid/view/autofill/AutofillPopupWindow$2;-><init>(Landroid/view/autofill/AutofillPopupWindow;Landroid/content/Context;[ILandroid/view/View;)V

    iget v5, p6, Landroid/graphics/Rect;->left:I

    iget v6, p6, Landroid/graphics/Rect;->top:I

    iget v7, p6, Landroid/graphics/Rect;->right:I

    iget p6, p6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5, v6, v7, p6}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result p6

    invoke-virtual {v4, p6}, Landroid/view/View;->setScrollX(I)V

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p6

    invoke-virtual {v4, p6}, Landroid/view/View;->setScrollY(I)V

    new-instance p6, Landroid/view/autofill/AutofillPopupWindow$$ExternalSyntheticLambda0;

    invoke-direct {p6, v3}, Landroid/view/autofill/AutofillPopupWindow$$ExternalSyntheticLambda0;-><init>([I)V

    invoke-virtual {p1, p6}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    move-object p1, v4

    :cond_4
    :goto_3
    iget-boolean p6, p0, Landroid/view/autofill/AutofillPopupWindow;->mFullScreen:Z

    if-nez p6, :cond_5

    invoke-virtual {p0, v2}, Landroid/view/autofill/AutofillPopupWindow;->setAnimationStyle(I)V

    goto :goto_4

    :cond_5
    if-ne p5, v2, :cond_6

    invoke-virtual {p0, v1}, Landroid/view/autofill/AutofillPopupWindow;->setAnimationStyle(I)V

    goto :goto_4

    :cond_6
    const p6, 0x103032b

    invoke-virtual {p0, p6}, Landroid/view/autofill/AutofillPopupWindow;->setAnimationStyle(I)V

    :goto_4
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result p6

    if-nez p6, :cond_7

    invoke-virtual {p0, p4}, Landroid/view/autofill/AutofillPopupWindow;->setWidth(I)V

    invoke-virtual {p0, p5}, Landroid/view/autofill/AutofillPopupWindow;->setHeight(I)V

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/autofill/AutofillPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void

    :cond_7
    invoke-virtual/range {p0 .. p5}, Landroid/view/autofill/AutofillPopupWindow;->update(Landroid/view/View;IIII)V

    return-void
.end method

.method protected greylist-max-o update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isLayoutInsetDecor()Z

    move-result p0

    invoke-virtual {v0, p2, v1, p0, p1}, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->show(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)V

    return-void
.end method

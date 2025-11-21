.class public Landroid/service/autofill/InlineSuggestionRoot;
.super Landroid/widget/FrameLayout;
.source "InlineSuggestionRoot.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "InlineSuggestionRoot"


# instance fields
.field private final blacklist mCallback:Landroid/service/autofill/IInlineSuggestionUiCallback;

.field private blacklist mDownX:F

.field private blacklist mDownY:F

.field private final blacklist mTouchSlop:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/service/autofill/IInlineSuggestionUiCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/service/autofill/InlineSuggestionRoot;->mCallback:Landroid/service/autofill/IInlineSuggestionUiCallback;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Landroid/service/autofill/InlineSuggestionRoot;->mTouchSlop:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/service/autofill/InlineSuggestionRoot;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/service/autofill/InlineSuggestionRoot;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/service/autofill/InlineSuggestionRoot;->mDownY:F

    :cond_1
    iget v0, p0, Landroid/service/autofill/InlineSuggestionRoot;->mDownX:F

    iget v2, p0, Landroid/service/autofill/InlineSuggestionRoot;->mDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v0, v2, v3, v4}, Landroid/util/MathUtils;->dist(FFFF)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v2

    and-int/2addr v1, v2

    if-nez v1, :cond_2

    iget v1, p0, Landroid/service/autofill/InlineSuggestionRoot;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    :cond_2
    :try_start_0
    iget-object v0, p0, Landroid/service/autofill/InlineSuggestionRoot;->mCallback:Landroid/service/autofill/IInlineSuggestionUiCallback;

    invoke-virtual {p0}, Landroid/service/autofill/InlineSuggestionRoot;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getInputToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/service/autofill/InlineSuggestionRoot;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/service/autofill/IInlineSuggestionUiCallback;->onTransferTouchFocusToImeWindow(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "InlineSuggestionRoot"

    const-string v1, "RemoteException transferring touch focus to IME"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

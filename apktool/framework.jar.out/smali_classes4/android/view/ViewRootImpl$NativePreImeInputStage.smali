.class final Landroid/view/ViewRootImpl$NativePreImeInputStage;
.super Landroid/view/ViewRootImpl$AsyncInputStage;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/InputQueue$FinishedInputEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NativePreImeInputStage"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl$AsyncInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist doOnBackKeyEvent(Landroid/view/KeyEvent;)I
    .locals 6

    iget-object v0, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v1

    invoke-virtual {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->isBackGestureInProgress()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    instance-of v2, v1, Landroid/window/OnBackAnimationCallback;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_5

    instance-of v2, v1, Landroid/view/ImeBackAnimationController;

    if-nez v2, :cond_5

    move-object p0, v1

    check-cast p0, Landroid/window/OnBackAnimationCallback;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Landroid/window/OnBackAnimationCallback;->onBackCancelled()V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->tryInvokeSystemNavigationObserverCallback()V

    invoke-interface {v1}, Landroid/window/OnBackInvokedCallback;->onBackInvoked()V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->predictiveBackSwipeEdgeNoneApi()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/window/BackEvent;

    invoke-direct {v0, v1, v1, v1, v3}, Landroid/window/BackEvent;-><init>(FFFI)V

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/window/BackEvent;

    invoke-direct {v0, v1, v1, v1, v4}, Landroid/window/BackEvent;-><init>(FFFI)V

    :goto_0
    invoke-interface {p0, v0}, Landroid/window/OnBackAnimationCallback;->onBackStarted(Landroid/window/BackEvent;)V

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->tryInvokeSystemNavigationObserverCallback()V

    invoke-interface {v1}, Landroid/window/OnBackInvokedCallback;->onBackInvoked()V

    goto :goto_1

    :cond_6
    iget-object p0, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Skip onBackInvoked(), reason: keyEvent.isCanceled=true"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-ne p0, v5, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->cancel()V

    :cond_8
    return v4
.end method


# virtual methods
.method public greylist-max-o onFinishedInputEvent(Ljava/lang/Object;Z)V
    .locals 0

    check-cast p1, Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewRootImpl$NativePreImeInputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$NativePreImeInputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    return-void
.end method

.method protected greylist-max-o onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->forPreImeOnly()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$NativePreImeInputStage;->isBack(Landroid/view/InputEvent;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmWindowlessBackKeyCallback(Landroid/view/ViewRootImpl;)Ljava/util/function/Predicate;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object p0, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmWindowlessBackKeyCallback(Landroid/view/ViewRootImpl;)Ljava/util/function/Predicate;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-ne p0, v3, :cond_1

    invoke-virtual {v0}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p0

    if-nez p0, :cond_1

    return v3

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    return v1

    :cond_3
    iget-object v2, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmOnBackInvokedDispatcher(Landroid/view/ViewRootImpl;)Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v2

    invoke-virtual {v2}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$NativePreImeInputStage;->doOnBackKeyEvent(Landroid/view/KeyEvent;)I

    move-result p0

    return p0

    :cond_4
    iget-object v0, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v0, v1, p1, v3, p0}, Landroid/view/InputQueue;->sendInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;ZLandroid/view/InputQueue$FinishedInputEventCallback;)V

    const/4 p0, 0x3

    return p0

    :cond_5
    return v1
.end method

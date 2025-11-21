.class public final Landroid/view/ImeInsetsSourceConsumer;
.super Landroid/view/InsetsSourceConsumer;
.source "ImeInsetsSourceConsumer.java"


# instance fields
.field private blacklist mHasPendingRequest:Z

.field private blacklist mIsRequestedVisibleAwaitingLeash:Z


# direct methods
.method public constructor blacklist <init>(ILandroid/view/InsetsState;Landroid/view/InsetsController;)V
    .locals 1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/view/InsetsSourceConsumer;-><init>(IILandroid/view/InsetsState;Landroid/view/InsetsController;)V

    return-void
.end method

.method private blacklist getImm()Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    iget-object p0, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {p0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p0

    return-object p0
.end method

.method private blacklist hasLeash()Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist notifyHidden(Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 2

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    const/16 v1, 0x26

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->notifyImeHidden(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingLeash:Z

    const-wide/16 v0, 0x8

    const-string p0, "IC.hideRequestFromApi"

    invoke-static {v0, v1, p0, p1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist applyLocalVisibilityOverride()Z
    .locals 4

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "ImeInsetsSourceConsumer#applyLocalVisibilityOverride"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    :cond_0
    invoke-super {p0}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    move-result p0

    return p0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10b00000001L

    invoke-super {p0, p1, v0, v1}, Landroid/view/InsetsSourceConsumer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v0, 0x10800000003L

    iget-boolean v2, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingLeash:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000006L

    iget-boolean p0, p0, Landroid/view/ImeInsetsSourceConsumer;->mHasPendingRequest:Z

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method protected blacklist isRequestedVisibleAwaitingControl()Z
    .locals 1

    invoke-super {p0}, Landroid/view/InsetsSourceConsumer;->isRequestedVisibleAwaitingControl()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingLeash:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist onAnimationStateChanged(Z)Z
    .locals 6

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/InsetsSourceConsumer;->onAnimationStateChanged(Z)Z

    move-result p0

    return p0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "ImeInsetsSourceConsumer#onAnimationFinished"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    :cond_1
    invoke-static {}, Landroid/view/inputmethod/Flags;->predictiveBackIme()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->isShowRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mAnimationState:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    invoke-super {p0, p1}, Landroid/view/InsetsSourceConsumer;->onAnimationStateChanged(Z)Z

    move-result v3

    or-int/2addr v0, v3

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->isShowRequested()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v3}, Landroid/view/InsetsController;->isPredictiveBackImeHideAnimInProgress()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    move-result v3

    or-int/2addr v0, v3

    :cond_3
    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->isShowRequested()Z

    move-result v3

    if-nez v3, :cond_4

    iput-boolean v2, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingLeash:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Landroid/view/ImeInsetsSourceConsumer;->mHasPendingRequest:Z

    if-nez p1, :cond_4

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    iget-object v3, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v3}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/InsetsController$Host;->isHandlingPointerEvent()Z

    move-result v3

    const/4 v4, 0x5

    const/16 v5, 0x33

    invoke-interface {p1, v1, v4, v5, v3}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/ImeInsetsSourceConsumer;->notifyHidden(Landroid/view/inputmethod/ImeTracker$Token;)V

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->removeSurface()V

    :cond_4
    iput-boolean v2, p0, Landroid/view/ImeInsetsSourceConsumer;->mHasPendingRequest:Z

    return v0
.end method

.method public blacklist onPerceptible(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/InsetsSourceConsumer;->onPerceptible(Z)V

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Landroid/view/inputmethod/InputMethodManager;->reportPerceptible(Landroid/os/IBinder;Z)V

    :cond_0
    return-void
.end method

.method public blacklist onShowRequested()V
    .locals 2

    iget v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mAnimationState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->isPredictiveBackImeHideAnimInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mHasPendingRequest:Z

    return-void
.end method

.method public blacklist onWindowFocusGained(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/InsetsSourceConsumer;->onWindowFocusGained(Z)V

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->registerImeConsumer(Landroid/view/ImeInsetsSourceConsumer;)V

    iget-object p1, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {p1}, Landroid/view/InsetsController;->getRequestedVisibleTypes()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->getType()I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->hasLeash()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingLeash:Z

    :cond_0
    return-void
.end method

.method public blacklist onWindowFocusLost()V
    .locals 1

    invoke-super {p0}, Landroid/view/InsetsSourceConsumer;->onWindowFocusLost()V

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->unregisterImeConsumer(Landroid/view/ImeInsetsSourceConsumer;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingLeash:Z

    :cond_0
    return-void
.end method

.method public blacklist removeSurface()V
    .locals 1

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/view/InsetsSourceConsumer;->removeSurface()V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodManager;->removeImeSurface(Landroid/os/IBinder;)V

    :cond_1
    return-void
.end method

.method blacklist requestHide(ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->hasLeash()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    iget-object p2, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {p2}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/InsetsController$Host;->isHandlingPointerEvent()Z

    move-result p2

    const/4 v0, 0x2

    const/4 v1, 0x5

    const/16 v2, 0x34

    invoke-interface {p1, v0, v1, v2, p2}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p2}, Landroid/view/ImeInsetsSourceConsumer;->notifyHidden(Landroid/view/inputmethod/ImeTracker$Token;)V

    :cond_1
    iget p1, p0, Landroid/view/ImeInsetsSourceConsumer;->mAnimationState:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    iput-boolean p2, p0, Landroid/view/ImeInsetsSourceConsumer;->mHasPendingRequest:Z

    :cond_2
    return-void
.end method

.method public blacklist requestShow(ZLandroid/view/inputmethod/ImeTracker$Token;)I
    .locals 5

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_5

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v2, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v2}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "ImeInsetsSourceConsumer#requestShow"

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->onShowRequested()V

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    const/16 v2, 0x24

    invoke-interface {v0, p2, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->hasLeash()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iput-boolean v2, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingLeash:Z

    :cond_1
    if-nez p1, :cond_4

    iget-object p1, p0, Landroid/view/ImeInsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->getId()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->getType()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/view/InsetsState;->isSourceOrDefaultVisible(II)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->hasLeash()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    iget-object p0, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {p0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/view/inputmethod/InputMethodManager;->requestImeShow(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_5
    return v1
.end method

.method public blacklist setControl(Landroid/view/InsetsSourceControl;[I[I[I[I)Z
    .locals 4

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I[I[I)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "ImeInsetsSourceConsumer#setControl"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    invoke-super/range {p0 .. p5}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I[I[I)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_1

    return p3

    :cond_1
    if-nez p1, :cond_2

    iget-boolean p2, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingLeash:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->getType()I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/view/InsetsController;->setRequestedVisibleTypes(II)V

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->removeSurface()V

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    if-eqz p1, :cond_3

    iput-boolean p3, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingLeash:Z

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

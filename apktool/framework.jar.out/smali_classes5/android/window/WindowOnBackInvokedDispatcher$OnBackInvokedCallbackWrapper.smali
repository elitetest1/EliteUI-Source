.class Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;
.super Landroid/window/IOnBackInvokedCallback$Stub;
.source "WindowOnBackInvokedDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowOnBackInvokedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnBackInvokedCallbackWrapper"
.end annotation


# instance fields
.field private final blacklist mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/window/OnBackInvokedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mIsSystemCallback:Z

.field private final blacklist mOnKeyPreIme:Ljava/util/function/BooleanSupplier;

.field private final blacklist mProgressAnimator:Landroid/window/BackProgressAnimator;

.field private final blacklist mSystemNavigationObserverCallbackRunnable:Ljava/lang/Runnable;

.field private final blacklist mTouchTracker:Landroid/window/BackTouchTracker;


# direct methods
.method public static synthetic blacklist $r8$lambda$4ToXODqn8sufRph7IG5pjjhTGhE(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;Landroid/window/BackMotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->lambda$onBackStarted$0(Landroid/window/BackMotionEvent;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$63ojIwchGKPXnN9WLnkEbUuCeQ0(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;Landroid/window/OnBackInvokedCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->lambda$onBackInvoked$3(Landroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JSuRKE4c8OySpubol1Svl3F06wU(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;)V
    .locals 0

    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->lambda$onBackInvoked$4()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$OHkUeAkifZ8klNEtL7KbX9WXjQs(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;)V
    .locals 0

    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->lambda$onBackCancelled$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xk5ZmE8Y18cgIJ8lWS9VRoUYAZ8(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;Landroid/window/BackMotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->lambda$onBackProgressed$1(Landroid/window/BackMotionEvent;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/window/OnBackInvokedCallback;Landroid/window/BackTouchTracker;Landroid/window/BackProgressAnimator;Landroid/os/Handler;Ljava/util/function/BooleanSupplier;Ljava/lang/Runnable;Z)V
    .locals 1

    invoke-direct {p0}, Landroid/window/IOnBackInvokedCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mTouchTracker:Landroid/window/BackTouchTracker;

    iput-object p3, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    iput-object p4, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mHandler:Landroid/os/Handler;

    iput-object p5, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mOnKeyPreIme:Ljava/util/function/BooleanSupplier;

    iput-object p6, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mSystemNavigationObserverCallbackRunnable:Ljava/lang/Runnable;

    iput-boolean p7, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mIsSystemCallback:Z

    return-void
.end method

.method private blacklist consumedByOnKeyPreIme()Z
    .locals 2

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/OnBackInvokedCallback;

    instance-of v1, v0, Landroid/view/ImeBackAnimationController;

    if-nez v1, :cond_0

    instance-of v0, v0, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;

    if-eqz v0, :cond_2

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mOnKeyPreIme:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->getBackAnimationCallback()Landroid/window/OnBackAnimationCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda4;-><init>(Landroid/window/OnBackAnimationCallback;)V

    invoke-virtual {p0, v1}, Landroid/window/BackProgressAnimator;->onBackCancelled(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string v0, "WindowOnBackDispatcher"

    const-string v1, "Failed to call onKeyPreIme"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getBackAnimationCallback()Landroid/window/OnBackAnimationCallback;
    .locals 1

    iget-object p0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/OnBackInvokedCallback;

    instance-of v0, p0, Landroid/window/OnBackAnimationCallback;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/window/OnBackAnimationCallback;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic blacklist lambda$onBackCancelled$2()V
    .locals 2

    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->getBackAnimationCallback()Landroid/window/OnBackAnimationCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mTouchTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v1}, Landroid/window/BackTouchTracker;->reset()V

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda4;-><init>(Landroid/window/OnBackAnimationCallback;)V

    invoke-virtual {p0, v1}, Landroid/window/BackProgressAnimator;->onBackCancelled(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onBackInvoked$3(Landroid/window/OnBackInvokedCallback;)V
    .locals 1

    iget-boolean v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mIsSystemCallback:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mSystemNavigationObserverCallbackRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    invoke-interface {p1}, Landroid/window/OnBackInvokedCallback;->onBackInvoked()V

    return-void
.end method

.method private synthetic blacklist lambda$onBackInvoked$4()V
    .locals 4

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mTouchTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v0}, Landroid/window/BackTouchTracker;->reset()V

    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->consumedByOnKeyPreIme()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v0}, Landroid/window/BackProgressAnimator;->isBackAnimationInProgress()Z

    move-result v0

    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/OnBackInvokedCallback;

    const-string v2, "WindowOnBackDispatcher"

    if-nez v1, :cond_1

    iget-object p0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {p0}, Landroid/window/BackProgressAnimator;->reset()V

    const-string p0, "Trying to call onBackInvoked() on a null callback reference."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    instance-of v3, v1, Landroid/window/OnBackAnimationCallback;

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    const-string p0, "ProgressAnimator was not in progress, skip onBackInvoked()."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->getBackAnimationCallback()Landroid/window/OnBackAnimationCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v0, v1, Landroid/view/ImeBackAnimationController;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->predictiveBackTimestampApi()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    new-instance v3, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;Landroid/window/OnBackInvokedCallback;)V

    invoke-virtual {v0, v3}, Landroid/window/BackProgressAnimator;->onBackInvoked(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v0}, Landroid/window/BackProgressAnimator;->reset()V

    iget-boolean v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mIsSystemCallback:Z

    if-eqz v0, :cond_4

    iget-object p0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mSystemNavigationObserverCallbackRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_4
    invoke-interface {v1}, Landroid/window/OnBackInvokedCallback;->onBackInvoked()V

    :goto_0
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_PREDICTIVE_BACK_ANIM_LOG:Z

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onBackInvoked, callback="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void
.end method

.method private synthetic blacklist lambda$onBackProgressed$1(Landroid/window/BackMotionEvent;)V
    .locals 1

    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->getBackAnimationCallback()Landroid/window/OnBackAnimationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {p0, p1}, Landroid/window/BackProgressAnimator;->onBackProgressed(Landroid/window/BackMotionEvent;)V

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$onBackStarted$0(Landroid/window/BackMotionEvent;)V
    .locals 5

    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->getBackAnimationCallback()Landroid/window/OnBackAnimationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v1}, Landroid/window/BackProgressAnimator;->isBackAnimationInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v1}, Landroid/window/BackProgressAnimator;->reset()V

    :cond_0
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mTouchTracker:Landroid/window/BackTouchTracker;

    sget-object v2, Landroid/window/BackTouchTracker$TouchTrackerState;->ACTIVE:Landroid/window/BackTouchTracker$TouchTrackerState;

    invoke-virtual {v1, v2}, Landroid/window/BackTouchTracker;->setState(Landroid/window/BackTouchTracker$TouchTrackerState;)V

    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mTouchTracker:Landroid/window/BackTouchTracker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/window/BackTouchTracker;->setShouldUpdateStartLocation(Z)V

    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mTouchTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {p1}, Landroid/window/BackMotionEvent;->getTouchX()F

    move-result v2

    invoke-virtual {p1}, Landroid/window/BackMotionEvent;->getTouchY()F

    move-result v3

    invoke-virtual {p1}, Landroid/window/BackMotionEvent;->getSwipeEdge()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/window/BackTouchTracker;->setGestureStartLocation(FFI)V

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/window/BackEvent;->fromBackMotionEvent(Landroid/window/BackMotionEvent;)Landroid/window/BackEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/window/OnBackAnimationCallback;->onBackStarted(Landroid/window/BackEvent;)V

    iget-object p0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda6;-><init>(Landroid/window/OnBackAnimationCallback;)V

    invoke-virtual {p0, p1, v1}, Landroid/window/BackProgressAnimator;->onBackStarted(Landroid/window/BackMotionEvent;Landroid/window/BackProgressAnimator$ProgressCallback;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist onBackCancelled()V
    .locals 2

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist onBackInvoked()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist onBackProgressed(Landroid/window/BackMotionEvent;)V
    .locals 2

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda5;-><init>(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;Landroid/window/BackMotionEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist onBackStarted(Landroid/window/BackMotionEvent;)V
    .locals 2

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper$$ExternalSyntheticLambda3;-><init>(Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;Landroid/window/BackMotionEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist setHandoffHandler(Landroid/window/IBackAnimationHandoffHandler;)V
    .locals 0

    return-void
.end method

.method public blacklist setTriggerBack(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;->mTouchTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {p0, p1}, Landroid/window/BackTouchTracker;->setTriggerBack(Z)V

    return-void
.end method

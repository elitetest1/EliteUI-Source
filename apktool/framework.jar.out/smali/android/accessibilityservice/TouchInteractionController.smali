.class public final Landroid/accessibilityservice/TouchInteractionController;
.super Ljava/lang/Object;
.source "TouchInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/TouchInteractionController$Callback;,
        Landroid/accessibilityservice/TouchInteractionController$State;
    }
.end annotation


# static fields
.field private static final blacklist MAX_POINTER_COUNT:I = 0x20

.field public static final whitelist STATE_CLEAR:I = 0x0

.field public static final whitelist STATE_DELEGATING:I = 0x4

.field public static final whitelist STATE_DRAGGING:I = 0x3

.field public static final whitelist STATE_TOUCH_EXPLORING:I = 0x2

.field public static final whitelist STATE_TOUCH_INTERACTING:I = 0x1


# instance fields
.field private blacklist mCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/accessibilityservice/TouchInteractionController$Callback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDisplayId:I

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mQueuedMotionEvents:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mService:Landroid/accessibilityservice/AccessibilityService;

.field private blacklist mServiceDetectsGestures:Z

.field private blacklist mState:I

.field private blacklist mStateChangeRequested:Z


# direct methods
.method constructor blacklist <init>(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/Object;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mQueuedMotionEvents:Ljava/util/Queue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mStateChangeRequested:Z

    iput v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mState:I

    iput p3, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    iput-object p2, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    return-void
.end method

.method static synthetic blacklist lambda$onStateChanged$1(Landroid/accessibilityservice/TouchInteractionController$Callback;I)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/accessibilityservice/TouchInteractionController$Callback;->onStateChanged(I)V

    return-void
.end method

.method static synthetic blacklist lambda$sendEventToAllListeners$0(Landroid/accessibilityservice/TouchInteractionController$Callback;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/accessibilityservice/TouchInteractionController$Callback;->onMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private blacklist sendEventToAllListeners(Landroid/view/MotionEvent;)V
    .locals 5

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/util/ArrayMap;

    iget-object p0, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-direct {v1, p0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/TouchInteractionController$Callback;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    if-eqz v3, :cond_0

    new-instance v4, Landroid/accessibilityservice/TouchInteractionController$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2, p1}, Landroid/accessibilityservice/TouchInteractionController$$ExternalSyntheticLambda1;-><init>(Landroid/accessibilityservice/TouchInteractionController$Callback;Landroid/view/MotionEvent;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    invoke-interface {v2, p1}, Landroid/accessibilityservice/TouchInteractionController$Callback;->onMotionEvent(Landroid/view/MotionEvent;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private blacklist setServiceDetectsGestures(Z)V
    .locals 2

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    invoke-interface {v0, v1, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setServiceDetectsGesturesEnabled(IZ)V

    iput-boolean p1, p0, Landroid/accessibilityservice/TouchInteractionController;->mServiceDetectsGestures:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    return-void
.end method

.method public static whitelist stateToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "STATE_DELEGATING"

    return-object p0

    :cond_1
    const-string p0, "STATE_DRAGGING"

    return-object p0

    :cond_2
    const-string p0, "STATE_TOUCH_EXPLORING"

    return-object p0

    :cond_3
    const-string p0, "STATE_TOUCH_INTERACTING"

    return-object p0

    :cond_4
    const-string p0, "STATE_CLEAR"

    return-object p0
.end method

.method private blacklist validateTransitionRequest()V
    .locals 3

    iget-boolean v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mServiceDetectsGestures:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "State transition requests are not allowed in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/accessibilityservice/TouchInteractionController;->mState:I

    invoke-static {p0}, Landroid/accessibilityservice/TouchInteractionController;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "State transitions are not allowed without first adding a callback."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist getDisplayId()I
    .locals 0

    iget p0, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    return p0
.end method

.method public whitelist getMaxPointerCount()I
    .locals 0

    const/16 p0, 0x20

    return p0
.end method

.method public whitelist getState()I
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Landroid/accessibilityservice/TouchInteractionController;->mState:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method blacklist onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-boolean v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mStateChangeRequested:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/accessibilityservice/TouchInteractionController;->mQueuedMotionEvents:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/accessibilityservice/TouchInteractionController;->sendEventToAllListeners(Landroid/view/MotionEvent;)V

    return-void
.end method

.method blacklist onStateChanged(I)V
    .locals 7

    iput p1, p0, Landroid/accessibilityservice/TouchInteractionController;->mState:I

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/TouchInteractionController$Callback;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Executor;

    if-eqz v5, :cond_0

    new-instance v6, Landroid/accessibilityservice/TouchInteractionController$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4, p1}, Landroid/accessibilityservice/TouchInteractionController$$ExternalSyntheticLambda0;-><init>(Landroid/accessibilityservice/TouchInteractionController$Callback;I)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    invoke-interface {v4, p1}, Landroid/accessibilityservice/TouchInteractionController$Callback;->onStateChanged(I)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Landroid/accessibilityservice/TouchInteractionController;->mStateChangeRequested:Z

    :goto_2
    iget-object p1, p0, Landroid/accessibilityservice/TouchInteractionController;->mQueuedMotionEvents:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Landroid/accessibilityservice/TouchInteractionController;->mQueuedMotionEvents:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Landroid/accessibilityservice/TouchInteractionController;->sendEventToAllListeners(Landroid/view/MotionEvent;)V

    goto :goto_2

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public whitelist performClick()V
    .locals 1

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget p0, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    invoke-interface {v0, p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->onDoubleTap(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    return-void
.end method

.method public whitelist performLongClickAndStartDrag()V
    .locals 1

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget p0, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    invoke-interface {v0, p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->onDoubleTapAndHold(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    return-void
.end method

.method public whitelist registerCallback(Ljava/util/concurrent/Executor;Landroid/accessibilityservice/TouchInteractionController$Callback;)V
    .locals 2

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    :cond_0
    iget-object v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-direct {p0, p2}, Landroid/accessibilityservice/TouchInteractionController;->setServiceDetectsGestures(Z)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist requestDelegating()V
    .locals 2

    invoke-direct {p0}, Landroid/accessibilityservice/TouchInteractionController;->validateTransitionRequest()V

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->requestDelegating(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mStateChangeRequested:Z

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    return-void
.end method

.method public whitelist requestDragging(I)V
    .locals 2

    invoke-direct {p0}, Landroid/accessibilityservice/TouchInteractionController;->validateTransitionRequest()V

    if-ltz p1, :cond_1

    const/16 v0, 0x20

    if-gt p1, v0, :cond_1

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    invoke-interface {v0, v1, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->requestDragging(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/accessibilityservice/TouchInteractionController;->mStateChangeRequested:Z

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid pointer id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist requestTouchExploration()V
    .locals 2

    invoke-direct {p0}, Landroid/accessibilityservice/TouchInteractionController;->validateTransitionRequest()V

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->requestTouchExploration(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mStateChangeRequested:Z

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    return-void
.end method

.method public whitelist unregisterAllCallbacks()V
    .locals 2

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/accessibilityservice/TouchInteractionController;->setServiceDetectsGestures(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public whitelist unregisterCallback(Landroid/accessibilityservice/TouchInteractionController$Callback;)Z
    .locals 3

    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/accessibilityservice/TouchInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v2, p0, Landroid/accessibilityservice/TouchInteractionController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v1}, Landroid/accessibilityservice/TouchInteractionController;->setServiceDetectsGestures(Z)V

    :cond_2
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

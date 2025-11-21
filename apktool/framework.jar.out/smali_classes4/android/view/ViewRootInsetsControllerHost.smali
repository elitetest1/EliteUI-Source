.class public Landroid/view/ViewRootInsetsControllerHost;
.super Ljava/lang/Object;
.source "ViewRootInsetsControllerHost.java"

# interfaces
.implements Landroid/view/InsetsController$Host;


# instance fields
.field private final blacklist TAG:Ljava/lang/String;

.field private blacklist mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

.field private final blacklist mViewRoot:Landroid/view/ViewRootImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmViewRoot(Landroid/view/ViewRootInsetsControllerHost;)Landroid/view/ViewRootImpl;
    .locals 0

    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VRInsetsControllerHost"

    iput-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->TAG:Ljava/lang/String;

    iput-object p1, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    return-void
.end method

.method private blacklist isVisibleToUser()Z
    .locals 0

    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic blacklist lambda$releaseSurfaceControlFromRt$0(Landroid/view/SurfaceControl;J)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->release()V

    return-void
.end method


# virtual methods
.method public blacklist addOnPreDrawRunnable(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/view/ViewRootInsetsControllerHost$1;

    invoke-direct {v1, p0, p1}, Landroid/view/ViewRootInsetsControllerHost$1;-><init>(Landroid/view/ViewRootInsetsControllerHost;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public blacklist applyInsetsHintSandboxingIfNeeded([Landroid/view/InsetsSourceControl;)V
    .locals 0

    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl;->applyInsetsHintSandboxingIfNeeded([Landroid/view/InsetsSourceControl;)V

    return-void
.end method

.method public varargs blacklist applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/SyncRtSurfaceTransactionApplier;

    iget-object v1, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/view/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/view/ViewRootInsetsControllerHost;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-virtual {p0, p1}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    return-void

    :cond_1
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-virtual {p0, v0, p1}, Landroid/view/SyncRtSurfaceTransactionApplier;->applyParams(Landroid/view/SurfaceControl$Transaction;[Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "View of the ViewRootImpl is not initiated."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist dipToPx(I)I
    .locals 0

    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl;->dipToPx(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 2

    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VRInsetsControllerHost"

    const-string/jumbo v1, "windowInsetsAnimation ended"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V

    return-void
.end method

.method public blacklist dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V

    return-void
.end method

.method public blacklist dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowInsets;",
            "Ljava/util/List<",
            "Landroid/view/WindowInsetsAnimation;",
            ">;)",
            "Landroid/view/WindowInsets;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInsetsAnimation;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "windowInsetsAnimation progress: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/WindowInsetsAnimation;->getInterpolatedFraction()F

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VRInsetsControllerHost"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public blacklist dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "VRInsetsControllerHost"

    const-string/jumbo v1, "windowInsetsAnimation started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    return-object p0
.end method

.method public blacklist getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method public blacklist getRootViewContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getRootViewTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSystemBarsAppearance()I
    .locals 0

    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget p0, p0, Landroid/view/InsetsFlags;->appearance:I

    return p0
.end method

.method public blacklist getSystemBarsBehavior()I
    .locals 0

    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget p0, p0, Landroid/view/InsetsFlags;->behavior:I

    return p0
.end method

.method public blacklist getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .locals 0

    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getViewRoot()Landroid/view/ViewRootImpl;
    .locals 0

    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    return-object p0
.end method

.method public blacklist getWindowToken()Landroid/os/IBinder;
    .locals 1

    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public blacklist hasAnimationCallbacks()Z
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->hasWindowInsetsAnimationCallback()Z

    move-result p0

    return p0
.end method

.method public blacklist isHandlingPointerEvent()Z
    .locals 0

    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->isHandlingPointerEvent()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isRelaunchingRemoved()Z
    .locals 0

    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->isRelaunchingRemoved()Z

    move-result p0

    return p0
.end method

.method public blacklist notifyInsetsChanged()V
    .locals 0

    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->notifyInsetsChanged()V

    return-void
.end method

.method public blacklist postInsetsAnimationCallback(Ljava/lang/Runnable;)V
    .locals 2

    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    new-instance v1, Landroid/view/ViewRootInsetsControllerHost$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/view/ViewRootInsetsControllerHost$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    return-void
.end method

.method public blacklist setSystemBarsAppearance(II)V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v0, Landroid/view/InsetsFlags;->appearance:I

    not-int v2, p2

    and-int/2addr v1, v2

    and-int/2addr p1, p2

    or-int/2addr p1, v1

    iget p2, v0, Landroid/view/InsetsFlags;->appearance:I

    if-eq p2, p1, :cond_0

    iput p1, v0, Landroid/view/InsetsFlags;->appearance:I

    iget-object p1, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    :cond_0
    return-void
.end method

.method public blacklist setSystemBarsBehavior(I)V
    .locals 1

    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->behavior:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iput p1, v0, Landroid/view/InsetsFlags;->behavior:I

    iget-object p1, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    :cond_0
    return-void
.end method

.method public blacklist shouldIgnoreInsetsAnimation()Z
    .locals 0

    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->shouldIgnoreInsetsAnimation()Z

    move-result p0

    return p0
.end method

.method public blacklist updateAnimatingTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    const/16 v1, 0x47

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewRootImpl;->updateAnimatingTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return-void
.end method

.method public blacklist updateCompatSysUiVisibility(III)V
    .locals 0

    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewRootImpl;->updateCompatSysUiVisibility(III)V

    return-void
.end method

.method public blacklist updateRequestedVisibleTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    const/16 v1, 0x35

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    iget-object v0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object p0, p0, Landroid/view/ViewRootInsetsControllerHost;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, p0, p1, p2}, Landroid/view/IWindowSession;->updateRequestedVisibleTypes(Landroid/view/IWindow;ILandroid/view/inputmethod/ImeTracker$Token;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "VRInsetsControllerHost"

    const-string p2, "Failed to call insetsModified"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

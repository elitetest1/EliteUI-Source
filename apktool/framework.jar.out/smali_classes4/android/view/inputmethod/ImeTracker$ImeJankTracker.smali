.class public final Landroid/view/inputmethod/ImeTracker$ImeJankTracker;
.super Ljava/lang/Object;
.source "ImeTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/ImeTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImeJankTracker"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/inputmethod/ImeTracker-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/inputmethod/ImeTracker$ImeJankTracker;-><init>()V

    return-void
.end method

.method private static blacklist getImeInsetsCujFromAnimation(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 p0, 0x51

    return p0

    :cond_1
    const/16 p0, 0x50

    return p0
.end method


# virtual methods
.method public blacklist onCancelAnimation(I)V
    .locals 0

    invoke-static {p1}, Landroid/view/inputmethod/ImeTracker$ImeJankTracker;->getImeInsetsCujFromAnimation(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    :cond_0
    return-void
.end method

.method public blacklist onFinishAnimation(I)V
    .locals 0

    invoke-static {p1}, Landroid/view/inputmethod/ImeTracker$ImeJankTracker;->getImeInsetsCujFromAnimation(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    :cond_0
    return-void
.end method

.method public blacklist onRequestAnimation(Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;IZ)V
    .locals 3

    invoke-static {p2}, Landroid/view/inputmethod/ImeTracker$ImeJankTracker;->getImeInsetsCujFromAnimation(I)I

    move-result p0

    invoke-interface {p1}, Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;->getDisplayContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;->getTargetSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;->getDisplayContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;->getTargetSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;->getDisplayContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withSurface(ILandroid/content/Context;Landroid/view/SurfaceControl;Landroid/os/Handler;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    xor-int/lit8 p3, p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1}, Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;->getHostPackageName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%d@%d@%s"

    invoke-static {v0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p0

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    :cond_1
    :goto_0
    return-void
.end method

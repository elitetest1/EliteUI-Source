.class Landroid/view/inputmethod/InputMethodManager$5;
.super Lcom/android/internal/inputmethod/IBooleanListener$Stub;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/inputmethod/InputMethodManager;->startStylusHandwritingInternal(Landroid/view/View;Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callbackRef:Ljava/lang/ref/WeakReference;

.field final synthetic blacklist val$executorRef:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor blacklist <init>(Landroid/view/inputmethod/InputMethodManager;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager$5;->val$executorRef:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Landroid/view/inputmethod/InputMethodManager$5;->val$callbackRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/android/internal/inputmethod/IBooleanListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onResult$0(Ljava/util/function/Consumer;Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onResult(Z)V
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$5;->val$executorRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager$5;->val$callbackRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    new-instance v1, Landroid/view/inputmethod/InputMethodManager$5$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/view/inputmethod/InputMethodManager$5$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

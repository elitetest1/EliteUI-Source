.class final Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;
.super Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;
.source "AccessibilityInputMethodSessionWrapper.java"


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mSessionRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/accessibilityservice/AccessibilityInputMethodSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$30z7XTXxohrgSLkuDZwX8E6VvXc(Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;IIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->lambda$updateSelection$0(IIIIII)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$KbzcIbsESe6V8d27iiiqUlsOMP0(Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;)V
    .locals 0

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->doFinishSession()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$QsD4e57Q7rFSzMmkYEJd64kgyYQ(Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->lambda$invalidateInput$1(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tmk09NY5t0y14mtiAgXqAIfDILQ(Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;)V
    .locals 0

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->doFinishInput()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Looper;Landroid/accessibilityservice/AccessibilityInputMethodSession;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private blacklist doFinishInput()V
    .locals 0

    iget-object p0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accessibilityservice/AccessibilityInputMethodSession;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/accessibilityservice/AccessibilityInputMethodSession;->finishInput()V

    :cond_0
    return-void
.end method

.method private blacklist doFinishSession()V
    .locals 1

    iget-object p0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist doInvalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    .locals 0

    iget-object p0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accessibilityservice/AccessibilityInputMethodSession;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityInputMethodSession;->invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    :cond_0
    return-void
.end method

.method private blacklist doUpdateSelection(IIIIII)V
    .locals 7

    iget-object p0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/accessibilityservice/AccessibilityInputMethodSession;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/accessibilityservice/AccessibilityInputMethodSession;->updateSelection(IIIIII)V

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$invalidateInput$1(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->doInvalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    return-void
.end method

.method private synthetic blacklist lambda$updateSelection$0(IIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->doUpdateSelection(IIIIII)V

    return-void
.end method


# virtual methods
.method public blacklist finishInput()V
    .locals 2

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->doFinishInput()V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist finishSession()V
    .locals 2

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->doFinishSession()V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper$$ExternalSyntheticLambda3;-><init>(Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method blacklist getSession()Landroid/accessibilityservice/AccessibilityInputMethodSession;
    .locals 0

    iget-object p0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mSessionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accessibilityservice/AccessibilityInputMethodSession;

    return-object p0
.end method

.method public blacklist invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    .locals 2

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->doInvalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist updateSelection(IIIIII)V
    .locals 9

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p6}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->doUpdateSelection(IIIIII)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper$$ExternalSyntheticLambda1;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v1 .. v8}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;IIIIII)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

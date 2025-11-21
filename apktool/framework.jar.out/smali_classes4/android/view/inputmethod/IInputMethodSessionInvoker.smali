.class final Landroid/view/inputmethod/IInputMethodSessionInvoker;
.super Ljava/lang/Object;
.source "IInputMethodSessionInvoker.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "InputMethodSessionWrapper"

.field private static blacklist sAsyncBinderEmulationHandler:Landroid/os/Handler;

.field private static final blacklist sAsyncBinderEmulationHandlerLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mCustomHandler:Landroid/os/Handler;

.field private final blacklist mSession:Lcom/android/internal/inputmethod/IInputMethodSession;


# direct methods
.method public static synthetic blacklist $r8$lambda$31vpNOzQGW8rOnf_6t7MbbL6kPc(Landroid/view/inputmethod/IInputMethodSessionInvoker;ILandroid/view/inputmethod/ExtractedText;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->lambda$updateExtractedText$2(ILandroid/view/inputmethod/ExtractedText;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$7BWK4m0xuSeCgtwFSKMSLANFdRg(Landroid/view/inputmethod/IInputMethodSessionInvoker;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->finishInputInternal()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EbPxi0XYPX5hK85VMISAxtm89-4(Landroid/view/inputmethod/IInputMethodSessionInvoker;Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->lambda$invalidateInput$7(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$M7MNaYPOrmYIPzNIH01_JjWW-10(Landroid/view/inputmethod/IInputMethodSessionInvoker;Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->lambda$updateCursorAnchorInfo$0(Landroid/view/inputmethod/CursorAnchorInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$QUJ-zQMIB425UVNuYnEj4fcQYro(Landroid/view/inputmethod/IInputMethodSessionInvoker;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->lambda$appPrivateCommand$3(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pRRhb6pwbh8MEmz3aWA8wFejiec(Landroid/view/inputmethod/IInputMethodSessionInvoker;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->lambda$viewClicked$4(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$r4itiwUHJxo5w9MQQnCocVBcGmM(Landroid/view/inputmethod/IInputMethodSessionInvoker;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->lambda$updateCursor$5(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vrVC47yjuV1AoTAJcbktiCBhNd4(Landroid/view/inputmethod/IInputMethodSessionInvoker;[Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->lambda$displayCompletions$1([Landroid/view/inputmethod/CompletionInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ztlbwNmjoslWF9FXNnHNSQARG3M(Landroid/view/inputmethod/IInputMethodSessionInvoker;IIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->lambda$updateSelection$6(IIIIII)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->sAsyncBinderEmulationHandlerLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/inputmethod/IInputMethodSession;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    iput-object p2, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    return-void
.end method

.method private blacklist appPrivateCommandInternal(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "InputMethodSessionWrapper"

    const-string p2, "IME died"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static blacklist createOrNull(Lcom/android/internal/inputmethod/IInputMethodSession;)Landroid/view/inputmethod/IInputMethodSessionInvoker;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/view/inputmethod/IInputMethodSessionInvoker;->sAsyncBinderEmulationHandlerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Landroid/view/inputmethod/IInputMethodSessionInvoker;->sAsyncBinderEmulationHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "IMM.binder-emu"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v2

    sput-object v2, Landroid/view/inputmethod/IInputMethodSessionInvoker;->sAsyncBinderEmulationHandler:Landroid/os/Handler;

    :cond_0
    sget-object v2, Landroid/view/inputmethod/IInputMethodSessionInvoker;->sAsyncBinderEmulationHandler:Landroid/os/Handler;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    move-object v2, v0

    :goto_0
    if-eqz p0, :cond_2

    new-instance v0, Landroid/view/inputmethod/IInputMethodSessionInvoker;

    invoke-direct {v0, p0, v2}, Landroid/view/inputmethod/IInputMethodSessionInvoker;-><init>(Lcom/android/internal/inputmethod/IInputMethodSession;Landroid/os/Handler;)V

    :cond_2
    return-object v0
.end method

.method private blacklist finishInputInternal()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-interface {p0}, Lcom/android/internal/inputmethod/IInputMethodSession;->finishInput()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "InputMethodSessionWrapper"

    const-string v1, "IME died"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private blacklist invalidateInputInternal(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/inputmethod/IInputMethodSession;->invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "InputMethodSessionWrapper"

    const-string p2, "IME died"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private synthetic blacklist lambda$appPrivateCommand$3(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->appPrivateCommandInternal(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$displayCompletions$1([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->displayCompletionsInternal([Landroid/view/inputmethod/CompletionInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$invalidateInput$7(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->invalidateInputInternal(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    return-void
.end method

.method private synthetic blacklist lambda$updateCursor$5(Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->updateCursorInternal(Landroid/graphics/Rect;)V

    return-void
.end method

.method private synthetic blacklist lambda$updateCursorAnchorInfo$0(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->updateCursorAnchorInfoInternal(Landroid/view/inputmethod/CursorAnchorInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$updateExtractedText$2(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->updateExtractedTextInternal(ILandroid/view/inputmethod/ExtractedText;)V

    return-void
.end method

.method private synthetic blacklist lambda$updateSelection$6(IIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->updateSelectionInternal(IIIIII)V

    return-void
.end method

.method private synthetic blacklist lambda$viewClicked$4(Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->viewClickedInternal(Z)V

    return-void
.end method

.method private blacklist updateCursorAnchorInfoInternal(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-interface {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodSession;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "InputMethodSessionWrapper"

    const-string v0, "IME died"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private blacklist updateCursorInternal(Landroid/graphics/Rect;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-interface {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodSession;->updateCursor(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "InputMethodSessionWrapper"

    const-string v0, "IME died"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private blacklist updateExtractedTextInternal(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodSession;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "InputMethodSessionWrapper"

    const-string p2, "IME died"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private blacklist updateSelectionInternal(IIIIII)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-interface/range {p0 .. p6}, Lcom/android/internal/inputmethod/IInputMethodSession;->updateSelection(IIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p1, "InputMethodSessionWrapper"

    const-string p2, "IME died"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private blacklist viewClickedInternal(Z)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-interface {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodSession;->viewClicked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "InputMethodSessionWrapper"

    const-string v0, "IME died"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method blacklist appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->appPrivateCommandInternal(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_0
    new-instance v1, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda7;-><init>(Landroid/view/inputmethod/IInputMethodSessionInvoker;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method blacklist displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->displayCompletionsInternal([Landroid/view/inputmethod/CompletionInfo;)V

    return-void

    :cond_0
    new-instance v1, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda6;-><init>(Landroid/view/inputmethod/IInputMethodSessionInvoker;[Landroid/view/inputmethod/CompletionInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method blacklist displayCompletionsInternal([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-interface {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodSession;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "InputMethodSessionWrapper"

    const-string v0, "IME died"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method blacklist finishInput()V
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->finishInputInternal()V

    return-void

    :cond_0
    new-instance v1, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda5;-><init>(Landroid/view/inputmethod/IInputMethodSessionInvoker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method blacklist invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->invalidateInputInternal(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    return-void

    :cond_0
    new-instance v1, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda2;-><init>(Landroid/view/inputmethod/IInputMethodSessionInvoker;Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-interface {p0}, Lcom/android/internal/inputmethod/IInputMethodSession;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method blacklist updateCursor(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->updateCursorInternal(Landroid/graphics/Rect;)V

    return-void

    :cond_0
    new-instance v1, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda1;-><init>(Landroid/view/inputmethod/IInputMethodSessionInvoker;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method blacklist updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->updateCursorAnchorInfoInternal(Landroid/view/inputmethod/CursorAnchorInfo;)V

    return-void

    :cond_0
    new-instance v1, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda4;-><init>(Landroid/view/inputmethod/IInputMethodSessionInvoker;Landroid/view/inputmethod/CursorAnchorInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method blacklist updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->updateExtractedTextInternal(ILandroid/view/inputmethod/ExtractedText;)V

    return-void

    :cond_0
    new-instance v1, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda0;-><init>(Landroid/view/inputmethod/IInputMethodSessionInvoker;ILandroid/view/inputmethod/ExtractedText;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method blacklist updateExtractedTextSync(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->updateExtractedTextInternal(ILandroid/view/inputmethod/ExtractedText;)V

    return-void
.end method

.method blacklist updateSelection(IIIIII)V
    .locals 9

    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-direct/range {p0 .. p6}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->updateSelectionInternal(IIIIII)V

    return-void

    :cond_0
    new-instance v1, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda8;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v1 .. v8}, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda8;-><init>(Landroid/view/inputmethod/IInputMethodSessionInvoker;IIIIII)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method blacklist viewClicked(Z)V
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->viewClickedInternal(Z)V

    return-void

    :cond_0
    new-instance v1, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda3;-><init>(Landroid/view/inputmethod/IInputMethodSessionInvoker;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.class final Landroid/inputmethodservice/RemoteInputConnection;
.super Ljava/lang/Object;
.source "RemoteInputConnection.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;
    }
.end annotation


# static fields
.field private static final blacklist MAX_WAIT_TIME_MILLIS:I = 0x7d0

.field private static final blacklist TAG:Ljava/lang/String; = "RemoteInputConnection"


# instance fields
.field private final blacklist mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

.field private final blacklist mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

.field private final blacklist mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;


# direct methods
.method constructor blacklist <init>(Landroid/inputmethodservice/RemoteInputConnection;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    iput-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    iget-object v0, p1, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->cloneWithSessionId(I)Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    move-result-object p2

    iput-object p2, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    iget-object p1, p1, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    iput-object p1, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/ref/WeakReference;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/CancellationGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/inputmethodservice/InputMethodServiceInternal;",
            ">;",
            "Lcom/android/internal/inputmethod/IRemoteInputConnection;",
            "Lcom/android/internal/inputmethod/CancellationGroup;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;-><init>(Ljava/lang/ref/WeakReference;Landroid/inputmethodservice/RemoteInputConnection-IA;)V

    iput-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-static {p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->create(Lcom/android/internal/inputmethod/IRemoteInputConnection;)Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    move-result-object p1

    iput-object p1, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    iput-object p3, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    return-void
.end method

.method private blacklist notifyUserActionIfNecessary()V
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {p0}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Landroid/inputmethodservice/InputMethodServiceInternal;->notifyUserActionIfNecessary()V

    return-void
.end method


# virtual methods
.method public whitelist beginBatchEdit()Z
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->beginBatchEdit()Z

    move-result p0

    return p0
.end method

.method public whitelist clearMetaKeyStates(I)Z
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->clearMetaKeyStates(I)Z

    move-result p0

    return p0
.end method

.method public whitelist closeConnection()V
    .locals 0

    return-void
.end method

.method public whitelist commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    move-result p0

    return p0
.end method

.method public whitelist commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .locals 7

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {v0}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-interface {v0, p1, p0}, Landroid/inputmethodservice/InputMethodServiceInternal;->exposeContent(Landroid/view/inputmethod/InputContentInfo;Landroid/view/inputmethod/InputConnection;)V

    :cond_2
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    iget-object v4, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v5, 0x7d0

    const-string v2, "RemoteInputConnection"

    const-string v3, "commitContent()"

    invoke-static/range {v1 .. v6}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrFalse(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Z

    move-result p0

    return p0
.end method

.method public whitelist commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    move-result p0

    return p0
.end method

.method public whitelist commitText(Ljava/lang/CharSequence;I)Z
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/inputmethodservice/RemoteInputConnection;->notifyUserActionIfNecessary()V

    :cond_0
    return p1
.end method

.method public whitelist commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/inputmethodservice/RemoteInputConnection;->notifyUserActionIfNecessary()V

    :cond_0
    return p1
.end method

.method public whitelist deleteSurroundingText(II)Z
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {p0, p1, p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->deleteSurroundingText(II)Z

    move-result p0

    return p0
.end method

.method public whitelist deleteSurroundingTextInCodePoints(II)Z
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {p0, p1, p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->deleteSurroundingTextInCodePoints(II)Z

    move-result p0

    return p0
.end method

.method public whitelist endBatchEdit()Z
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->endBatchEdit()Z

    move-result p0

    return p0
.end method

.method public whitelist finishComposingText()Z
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->finishComposingText()Z

    move-result p0

    return p0
.end method

.method public whitelist getCursorCapsMode(I)I
    .locals 7

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->getCursorCapsMode(I)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    iget-object v4, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v5, 0x7d0

    const-string v2, "RemoteInputConnection"

    const-string v3, "getCursorCapsMode()"

    invoke-static/range {v1 .. v6}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrZero(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)I

    move-result v0

    iget-object p0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {p0}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, v0}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetCursorCapsModeProto(II)[B

    move-result-object p1

    const-string v1, "RemoteInputConnection#getCursorCapsMode"

    invoke-interface {p0, v1, p1}, Landroid/inputmethodservice/InputMethodServiceInternal;->triggerServiceDump(Ljava/lang/String;[B)V

    :cond_1
    return v0
.end method

.method public whitelist getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 7

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    iget-object v4, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v5, 0x7d0

    const-string v2, "RemoteInputConnection"

    const-string v3, "getExtractedText()"

    invoke-static/range {v1 .. v6}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrNull(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/ExtractedText;

    iget-object p0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {p0}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, p2, v0}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetExtractedTextProto(Landroid/view/inputmethod/ExtractedTextRequest;ILandroid/view/inputmethod/ExtractedText;)[B

    move-result-object p1

    const-string p2, "RemoteInputConnection#getExtractedText"

    invoke-interface {p0, p2, p1}, Landroid/inputmethodservice/InputMethodServiceInternal;->triggerServiceDump(Ljava/lang/String;[B)V

    :cond_1
    return-object v0
.end method

.method public whitelist getHandler()Landroid/os/Handler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist getSelectedText(I)Ljava/lang/CharSequence;
    .locals 7

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->getSelectedText(I)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    iget-object v4, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v5, 0x7d0

    const-string v2, "RemoteInputConnection"

    const-string v3, "getSelectedText()"

    invoke-static/range {v1 .. v6}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrNull(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iget-object p0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {p0}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, v0}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetSelectedTextProto(ILjava/lang/CharSequence;)[B

    move-result-object p1

    const-string v1, "RemoteInputConnection#getSelectedText"

    invoke-interface {p0, v1, p1}, Landroid/inputmethodservice/InputMethodServiceInternal;->triggerServiceDump(Ljava/lang/String;[B)V

    :cond_1
    return-object v0
.end method

.method public whitelist getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;
    .locals 7

    const-string v0, " is invalid and always results in null result."

    const-string v1, "RemoteInputConnection"

    if-gez p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "beforeLength="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-gez p2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "afterLength="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->getSurroundingText(III)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    iget-object v4, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v5, 0x7d0

    const-string v2, "RemoteInputConnection"

    const-string v3, "getSurroundingText()"

    invoke-static/range {v1 .. v6}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrNull(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/SurroundingText;

    iget-object p0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {p0}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1, p2, p3, v0}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetSurroundingTextProto(IIILandroid/view/inputmethod/SurroundingText;)[B

    move-result-object p1

    const-string p2, "RemoteInputConnection#getSurroundingText"

    invoke-interface {p0, p2, p1}, Landroid/inputmethodservice/InputMethodServiceInternal;->triggerServiceDump(Ljava/lang/String;[B)V

    :cond_3
    return-object v0
.end method

.method public whitelist getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 7

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "length="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is invalid and always results in null result."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteInputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->getTextAfterCursor(II)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    iget-object v4, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v5, 0x7d0

    const-string v2, "RemoteInputConnection"

    const-string v3, "getTextAfterCursor()"

    invoke-static/range {v1 .. v6}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrNull(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iget-object p0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {p0}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1, p2, v0}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetTextAfterCursorProto(IILjava/lang/CharSequence;)[B

    move-result-object p1

    const-string p2, "RemoteInputConnection#getTextAfterCursor"

    invoke-interface {p0, p2, p1}, Landroid/inputmethodservice/InputMethodServiceInternal;->triggerServiceDump(Ljava/lang/String;[B)V

    :cond_2
    return-object v0
.end method

.method public whitelist getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 7

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "length="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is invalid and always results in null result."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteInputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->getTextBeforeCursor(II)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    iget-object v4, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v5, 0x7d0

    const-string v2, "RemoteInputConnection"

    const-string v3, "getTextBeforeCursor()"

    invoke-static/range {v1 .. v6}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrNull(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iget-object p0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {p0}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1, p2, v0}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetTextBeforeCursorProto(IILjava/lang/CharSequence;)[B

    move-result-object p1

    const-string p2, "RemoteInputConnection#getTextBeforeCursor"

    invoke-interface {p0, p2, p1}, Landroid/inputmethodservice/InputMethodServiceInternal;->triggerServiceDump(Ljava/lang/String;[B)V

    :cond_2
    return-object v0
.end method

.method public blacklist isSameConnection(Lcom/android/internal/inputmethod/IRemoteInputConnection;)Z
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->isSameConnection(Lcom/android/internal/inputmethod/IRemoteInputConnection;)Z

    move-result p0

    return p0
.end method

.method public whitelist performContextMenuAction(I)Z
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->performContextMenuAction(I)Z

    move-result p0

    return p0
.end method

.method public whitelist performEditorAction(I)Z
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->performEditorAction(I)Z

    move-result p0

    return p0
.end method

.method public whitelist performHandwritingGesture(Landroid/view/inputmethod/HandwritingGesture;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {p0, p1, p2, p3}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->performHandwritingGesture(Landroid/view/inputmethod/HandwritingGesture;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public whitelist performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {p0, p1, p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public whitelist performSpellCheck()Z
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {p0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->performSpellCheck()Z

    move-result p0

    return p0
.end method

.method public whitelist previewHandwritingGesture(Landroid/view/inputmethod/PreviewableHandwritingGesture;Landroid/os/CancellationSignal;)Z
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {p0, p1, p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->previewHandwritingGesture(Landroid/view/inputmethod/HandwritingGesture;Landroid/os/CancellationSignal;)Z

    move-result p0

    return p0
.end method

.method public whitelist replaceText(IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual/range {p0 .. p5}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->replaceText(IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z

    move-result p0

    return p0
.end method

.method public whitelist reportFullscreenMode(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist requestCursorUpdates(I)Z
    .locals 8

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {v0}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-interface {v0}, Landroid/inputmethodservice/InputMethodServiceInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    iget-object v1, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v1, p1, v0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->requestCursorUpdates(II)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    iget-object v5, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v6, 0x7d0

    const-string v3, "RemoteInputConnection"

    const-string v4, "requestCursorUpdates()"

    invoke-static/range {v2 .. v7}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrFalse(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Z

    move-result p0

    return p0
.end method

.method public whitelist requestCursorUpdates(II)Z
    .locals 8

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->isCanceled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mImsInternal:Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;

    invoke-virtual {v0}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-interface {v0}, Landroid/inputmethodservice/InputMethodServiceInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    iget-object v1, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v1, p1, p2, v0}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->requestCursorUpdates(III)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    iget-object v5, p0, Landroid/inputmethodservice/RemoteInputConnection;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    const-wide/16 v6, 0x7d0

    const-string v3, "RemoteInputConnection"

    const-string v4, "requestCursorUpdates()"

    invoke-static/range {v2 .. v7}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResultOrFalse(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Z

    move-result p0

    return p0
.end method

.method public whitelist requestTextBoundsInfo(Landroid/graphics/RectF;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/TextBoundsInfoResult;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {p0, p1, p2, p3}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->requestTextBoundsInfo(Landroid/graphics/RectF;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public whitelist sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/inputmethodservice/RemoteInputConnection;->notifyUserActionIfNecessary()V

    :cond_0
    return p1
.end method

.method public whitelist setComposingRegion(II)Z
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {p0, p1, p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->setComposingRegion(II)Z

    move-result p0

    return p0
.end method

.method public whitelist setComposingRegion(IILandroid/view/inputmethod/TextAttribute;)Z
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {p0, p1, p2, p3}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->setComposingRegion(IILandroid/view/inputmethod/TextAttribute;)Z

    move-result p0

    return p0
.end method

.method public whitelist setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/inputmethodservice/RemoteInputConnection;->notifyUserActionIfNecessary()V

    :cond_0
    return p1
.end method

.method public whitelist setComposingText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->setComposingText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/inputmethodservice/RemoteInputConnection;->notifyUserActionIfNecessary()V

    :cond_0
    return p1
.end method

.method public whitelist setImeConsumesInput(Z)Z
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->setImeConsumesInput(Z)Z

    move-result p0

    return p0
.end method

.method public whitelist setSelection(II)Z
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/RemoteInputConnection;->mInvoker:Landroid/inputmethodservice/IRemoteInputConnectionInvoker;

    invoke-virtual {p0, p1, p2}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker;->setSelection(II)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RemoteInputConnection{idHash=#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

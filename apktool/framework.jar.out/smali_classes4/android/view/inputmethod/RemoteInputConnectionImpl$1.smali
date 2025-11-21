.class Landroid/view/inputmethod/RemoteInputConnectionImpl$1;
.super Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;
.source "RemoteInputConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/RemoteInputConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;


# direct methods
.method public static synthetic blacklist $r8$lambda$3mhKHtk_g_9EEQwcxzmqObRs10s(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->lambda$clearMetaKeyStates$10(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BhrG0JqFo30bEfXozs3qs2WAo8g(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->lambda$performEditorAction$6(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$KmheW7rzJC5w0l5QNkFmlmdSXPQ(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->lambda$deleteSurroundingText$4(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Mg3pt59RqjLud-5e4Ud3_FIstiM(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->lambda$sendKeyEvent$5(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$b51gX3RRgWNBVYCcVWB-Tm7udJw(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->lambda$setSelection$1(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mFHuHl3Rjv4gPSnQARECkdT9SuQ(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->lambda$commitText$0(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mkFDahAR9XR6GDIWTy7xqO4hqpY(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->lambda$performContextMenuAction$7(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$sItCemcWTZ6fB0FwT6P0i8Z_-Qg(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->lambda$getCursorCapsMode$8(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$x_f5W60SvD2VREVacz848EArq7M(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)Landroid/view/inputmethod/SurroundingText;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->lambda$getSurroundingText$2(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)Landroid/view/inputmethod/SurroundingText;

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-direct {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$clearMetaKeyStates$10(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mcheckSessionId(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmDeactivateRequested(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    return-void

    :cond_2
    :goto_0
    const-string p0, "RemoteInputConnectionImpl"

    const-string p1, "clearMetaKeyStates on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$commitText$0(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mcheckSessionId(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmDeactivateRequested(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    invoke-interface {p1, p2, p3, p4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z

    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    return-void

    :cond_2
    :goto_0
    const-string p0, "RemoteInputConnectionImpl"

    const-string p1, "commitText on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$deleteSurroundingText$4(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mcheckSessionId(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmDeactivateRequested(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    return-void

    :cond_2
    :goto_0
    const-string p0, "RemoteInputConnectionImpl"

    const-string p1, "deleteSurroundingText on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$getCursorCapsMode$8(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mcheckSessionId(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmDeactivateRequested(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "RemoteInputConnectionImpl"

    const-string p1, "getCursorCapsMode on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method static synthetic blacklist lambda$getCursorCapsMode$9(ILjava/lang/Integer;)[B
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetCursorCapsModeProto(II)[B

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$getSurroundingText$2(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)Landroid/view/inputmethod/SurroundingText;
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mcheckSessionId(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    const-string v1, "RemoteInputConnectionImpl"

    if-eqz p1, :cond_4

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmDeactivateRequested(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    if-gez p2, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Returning null to getSurroundingText due to an invalid beforeLength="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    if-gez p3, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Returning null to getSurroundingText due to an invalid afterLength="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3
    invoke-interface {p1, p2, p3, p4}, Landroid/view/inputmethod/InputConnection;->getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    const-string p0, "getSurroundingText on inactive InputConnection"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method static synthetic blacklist lambda$getSurroundingText$3(IIILandroid/view/inputmethod/SurroundingText;)[B
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetSurroundingTextProto(IIILandroid/view/inputmethod/SurroundingText;)[B

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$performContextMenuAction$7(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mcheckSessionId(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmDeactivateRequested(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    return-void

    :cond_2
    :goto_0
    const-string p0, "RemoteInputConnectionImpl"

    const-string/jumbo p1, "performContextMenuAction on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$performEditorAction$6(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mcheckSessionId(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmDeactivateRequested(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    return-void

    :cond_2
    :goto_0
    const-string p0, "RemoteInputConnectionImpl"

    const-string/jumbo p1, "performEditorAction on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$sendKeyEvent$5(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mcheckSessionId(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmDeactivateRequested(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    return-void

    :cond_2
    :goto_0
    const-string p0, "RemoteInputConnectionImpl"

    const-string/jumbo p1, "sendKeyEvent on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$setSelection$1(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mcheckSessionId(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmDeactivateRequested(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    return-void

    :cond_2
    :goto_0
    const-string p0, "RemoteInputConnectionImpl"

    const-string/jumbo p1, "setSelection on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist clearMetaKeyStates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda0;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    const-string p0, "clearMetaKeyStatesFromA11yIme"

    invoke-static {v0, p0, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist commitText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .locals 7

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda6;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda6;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    const-string p0, "commitTextFromA11yIme"

    invoke-static {v0, p0, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist deleteSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda5;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    const-string p0, "deleteSurroundingTextFromA11yIme"

    invoke-static {v0, p0, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist getCursorCapsMode(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda7;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    invoke-static {}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$smuseImeTracing()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda8;

    invoke-direct {p0, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda8;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string p1, "getCursorCapsModeFromA11yIme"

    invoke-static {v0, p1, p3, v1, p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    return-void
.end method

.method public blacklist getSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V
    .locals 7

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda3;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda3;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)V

    invoke-static {}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$smuseImeTracing()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda4;

    invoke-direct {p0, v4, v5, v6}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda4;-><init>(III)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string p1, "getSurroundingTextFromA11yIme"

    invoke-static {v0, p1, p5, v1, p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    return-void
.end method

.method public blacklist performContextMenuAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda9;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    const-string/jumbo p0, "performContextMenuActionFromA11yIme"

    invoke-static {v0, p0, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist performEditorAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda1;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    const-string/jumbo p0, "performEditorActionFromA11yIme"

    invoke-static {v0, p0, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist sendKeyEvent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda2;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V

    const-string/jumbo p0, "sendKeyEventFromA11yIme"

    invoke-static {v0, p0, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist setSelection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda10;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    const-string/jumbo p0, "setSelectionFromA11yIme"

    invoke-static {v0, p0, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

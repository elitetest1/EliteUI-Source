.class public abstract Landroid/inputmethodservice/AbstractInputMethodService;
.super Landroid/window/WindowProviderService;
.source "AbstractInputMethodService.java"

# interfaces
.implements Landroid/view/KeyEvent$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;,
        Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;
    }
.end annotation


# instance fields
.field final greylist-max-o mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field private greylist-max-o mInputMethod:Landroid/view/inputmethod/InputMethod;

.field private blacklist mInputMethodServiceInternal:Landroid/inputmethodservice/InputMethodServiceInternal;

.field protected blacklist mIsPressBtnSIPOnOff:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmInputMethodServiceInternal(Landroid/inputmethodservice/AbstractInputMethodService;)Landroid/inputmethodservice/InputMethodServiceInternal;
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mInputMethodServiceInternal:Landroid/inputmethodservice/InputMethodServiceInternal;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/window/WindowProviderService;-><init>()V

    new-instance v0, Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v0}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    return-void
.end method


# virtual methods
.method blacklist createInputMethodServiceInternal()Landroid/inputmethodservice/InputMethodServiceInternal;
    .locals 1

    new-instance v0, Landroid/inputmethodservice/AbstractInputMethodService$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/AbstractInputMethodService$1;-><init>(Landroid/inputmethodservice/AbstractInputMethodService;)V

    return-object v0
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final blacklist getInitialDisplayId()I
    .locals 3

    const-string p0, "getInitialDisplayId: imeDisplayId="

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->getImeDisplayId()I

    move-result v0

    const-string v1, "InputMethodService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final blacklist getInputMethodInternal()Landroid/view/inputmethod/InputMethod;
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    return-object p0
.end method

.method public whitelist getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    return-object p0
.end method

.method public final blacklist getWindowContextOptions()Landroid/os/Bundle;
    .locals 0

    invoke-super {p0}, Landroid/window/WindowProviderService;->getWindowContextOptions()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final blacklist getWindowType()I
    .locals 0

    const/16 p0, 0x7db

    return p0
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object p1, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->onCreateInputMethodInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;

    move-result-object p1

    iput-object p1, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    :cond_0
    iget-object p1, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mInputMethodServiceInternal:Landroid/inputmethodservice/InputMethodServiceInternal;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->createInputMethodServiceInternal()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object p1

    iput-object p1, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mInputMethodServiceInternal:Landroid/inputmethodservice/InputMethodServiceInternal;

    :cond_1
    new-instance p1, Landroid/inputmethodservice/IInputMethodWrapper;

    iget-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mInputMethodServiceInternal:Landroid/inputmethodservice/InputMethodServiceInternal;

    iget-object p0, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    invoke-direct {p1, v0, p0}, Landroid/inputmethodservice/IInputMethodWrapper;-><init>(Landroid/inputmethodservice/InputMethodServiceInternal;Landroid/view/inputmethod/InputMethod;)V

    return-object p1
.end method

.method public abstract whitelist onCreateInputMethodInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;
.end method

.method public abstract whitelist onCreateInputMethodSessionInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist onShouldVerifyKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
